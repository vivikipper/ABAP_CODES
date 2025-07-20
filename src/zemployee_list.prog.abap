*&---------------------------------------------------------------------*
*& Report ZEMPLOYEE_LIST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zemployee_list LINE-SIZE 132.

TABLES zemployees.

*********************************************************

SELECT * FROM zemployees.       "Basic Select Loop
  WRITE zemployees.
ENDSELECT.

ULINE.

SELECT * FROM zemployees.        "Basic Select Loop with a LINE_BREAK
  WRITE / zemployees.
ENDSELECT.

ULINE.

SELECT * FROM zemployees.         "Basic Select Loop with a LINE_BREAK
  WRITE  zemployees.               " After the first row is output
  WRITE /.
ENDSELECT.

ULINE.

SKIP 2.                         " Basic Select Loop with a SKIP statement
SELECT * FROM zemployees.
  WRITE / zemployees.
ENDSELECT.

SKIP 2.
SELECT * FROM zemployees.        " Basic Select Loop with individual fields
  WRITE zemployees-surname.     " Being output
  WRITE zemployees-forename.
  WRITE zemployees-dob.
  ULINE.
ENDSELECT.
