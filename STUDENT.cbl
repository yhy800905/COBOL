      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Lab2.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT STUDENT
           ASSIGN TO
           "C:\Users\yhy80\Desktop\CST8283\Week2\Lab2\STUDENT.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD STUDENT.
       01 Student_input.
           05 Student_number  PIC 9(10).
           05 Student_program PIC X(8).
           05 Student_year    PIC 9(6).
           05 Student_Data.
               10 Name.
                   15 Title            PIC X(6).
                   15 First_name       PIC X(15).
                   15 Student_Initial  PIC X(2).
                   15 Last_name        PIC X(28).
               10 Address.
                   15 Street_address   PIC X(25).
                   15 City_name        PIC X(15).
                   15 Province         PIC X(15).
                   15 Postal_code      PIC X(7).

       WORKING-STORAGE SECTION.

       01 WS-EOF PIC A(1).

       PROCEDURE DIVISION.
           MAIN_PROGRAM.
               PERFORM OPEN_ROUTINE.
               PERFORM READ_ROUTINE UNTIL WS-EOF='Y'.
               PERFORM CLOSE_ROUTINE.
               STOP RUN.

           OPEN_ROUTINE.
               OPEN INPUT STUDENT.

           READ_ROUTINE.
               READ STUDENT
                   AT END MOVE 'Y' TO WS-EOF
                       NOT AT END DISPLAY Student_input.

           CLOSE_ROUTINE.
               CLOSE STUDENT.
       END PROGRAM Lab2.
