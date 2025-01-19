INCLUDE Irvine32.inc
.data
																					; Welcome message
	WelcomeMessage BYTE "---------------------------------------", 0
	WelcomeMessage2 BYTE "| LIBRARY MANAGEMENT SYSTEM |", 0
	WelcomeMessage3 BYTE "| PROPERTY OF FAST-NUCES |", 0
	WelcomeMessage4 BYTE "| MADE BY ASZ |", 0
	WelcomeMessage5 BYTE "---------------------------------------", 0
	emptystring BYTE " ",0
	dispay1 BYTE " 333333333333 ",13,10
	BYTE " 3333333333333 ",13,10
	BYTE " 33 ",13,10
	BYTE " 33 ",13,10
	BYTE " 333333333333 ",13,10
	BYTE " 333333333333 ",13,10
	BYTE " 33 ",13,10
	BYTE " 33 ",13,10
	BYTE " 3333333333333 ",13,10
	BYTE " 333333333333 ",0
	dispay2 BYTE " 222222222222 ",13,10
	BYTE " 2222222222222 ",13,10
	BYTE " 22 ",13,10
	BYTE " 22 ",13,10
	BYTE " 2222222222222 ",13,10
	BYTE " 222222222222 ",13,10
	BYTE " 22 ",13,10
	BYTE " 22 ",13,10
	BYTE " 222222222222 ",13,10
	BYTE " 2222222222222 ",0
	dispay3 BYTE " 11 ",13,10
	BYTE " 11 ",13,10
	BYTE " 11 ",13,10
	BYTE " 11 ",13,10
	BYTE " 11 ",13,10
	BYTE " 11 ",13,10
	BYTE " 11 ",13,10
	BYTE " 11 ",13,10
	BYTE " 11 ",13,10
	BYTE " 11 ",0
	Line1 BYTE "W W EEEEEEEE L CCCCCCCC OOOOOOOO M M EEEEEEEEE ",13,10
	BYTE "W W E L C O O M M M M E ",13,10
	BYTE "W W W W EEEEEEEE L C O O M M M EEEEEEEEE ",13,10
	BYTE "W W W W E L C O O M M E ",13,10
	BYTE "W W EEEEEEEE LLLLLLLLL CCCCCCCC OOOOOOOOO M M EEEEEEEEE ",13,10,13,10
	BYTE "TTTTTTT OOOOOOOOO FFFFFFFF A SSSSSSSS TTTTTTTTT", 13, 10
	BYTE " T O O F A A S T ", 13, 10
	BYTE " T O O FFFFFF AAAAA SSSSSSSS T ", 13, 10
	BYTE " T O O F A A S T ", 13, 10
	BYTE " T OOOOOOOOO F A A SSSSSSST T ", 13, 10,13,10
	BYTE "L IIIIIIIIII BBBBBBB RRRRRRR A RRRRRRR A Y Y ", 13, 10
	BYTE "L I B B R R A A R R A A Y Y ", 13, 10
	BYTE "L I BBBBBBBB RRRRRRR AAAAA RRRRRRR AAAAA Y ", 13, 10
	BYTE "L I B B R R A A R R A A Y ", 13, 10
	BYTE "LLLLLLLLLL IIIIIIIIII BBBBBBBB R R A A R R A A Y ", 13, 10, 0
	ExitMessage BYTE "Thank you for using the program. Goodbye!", 0
																					; InvalidChoiceMessage BYTE "Invalid choice. Please try again.", 0
	BookTitleMsg BYTE "Book Title: ", 0
	BookAuthorMsg BYTE "Book Author: ", 0
	BookISBNMsg BYTE "Book ISBN: ", 0
	BookNotFound BYTE "Book not found.", 0
	NUMBER_OF_BOOKS DWORD 50
	BookReturnMsg BYTE "Book Returned Successfully" ,0
	BookFailMsg BYTE "No Book Rented yet" ,0
																					; Prompts for employee data input
	IDPrompt BYTE "Enter your Employee ID: ", 0
	NamePrompt BYTE "Enter your Name: ", 0
	YearPrompt BYTE "Enter your Year of Birth: ", 0
	BookFound BYTE "Foudn!", 0
																					; Variables to store employee data
	EmployeeID DWORD ?
	EmployeeName BYTE 50 DUP(0)														; Allocate space for the employee name(50 characters)
	YearOfBirth DWORD ?
																					; User type prompt
	UserTypePrompt BYTE "Are you a: (1) Librarian (2) Customer: ", 0
																					; Librarian and Customer options

	LibrarianOptions BYTE "1) Add Book 2) Update Book Info 3) Display Library Track Info 4) Display Book Info 5) Register Student 6) Close Library", 0
	CustomerOptions BYTE "1) Return Book (2) Rent Book (3)Log Out", 0
	CurrentID DWORD 0
																					; Book data prompts for AddBook functionality
	BookTitlePrompt BYTE "Enter Book Title: ", 0
	BookAuthorPrompt BYTE "Enter Book Author: ", 0
	BookISBNPrompt BYTE "Enter Book ISBN: ", 0
	QuantityPrompt BYTE "Enter Book Quantity: ", 0
	BookAddedMessage BYTE "Book successfully added!", 0
	BookNotFoundMessage BYTE "Book not found.", 0
	UpdateTitlePrompt BYTE "Enter new Book Title: ", 0
	UpdateAuthorPrompt BYTE "Enter new Book Author: ", 0
	QuantityUpdatedPrompt BYTE "Enter new Quantity", 0
	BookUpdatedMessage BYTE "Book information updated.", 0
	BookRent DWORD 5h
	BookRentMsg BYTE " Enter the book you want to rent", 0
	f1 BYTE " Book Found at this index ",0
	f2 BYTE " Book not found" ,0
																					; Variables to store book data
	MAX_BOOKS = 50																	; Maximum number of books
	MAX_BOOKS = 50																	; Set maximum number of books
	BookTitleSize = 50
	BookAuthorSize = 50
																					; Arrays for storing book data for 50 books
	BookTitles BYTE MAX_BOOKS * BookTitleSize DUP(0)								; Array for 50 book titles, each 50 bytes
	BookAuthors BYTE MAX_BOOKS * BookAuthorSize DUP(0)								; Array for 50 author names, each 50 bytes
	BookISBNs DWORD MAX_BOOKS DUP(? )
	Quantity DWORD MAX_BOOKS DUP(? )
	BookToRent BYTE 50 DUP(? )
	BookUsedStatus BYTE MAX_BOOKS DUP(0)											; 1 byte per book to track availability(0 or 1)
																					; Other variablesand messages
	CurrentBookIndex DWORD 0
	ISNNotFound BYTE "ISBN Not Found", 0
																					; Arrays for each book attribute
	BookTitle BYTE MAX_BOOKS * 50 DUP(0)											; Array for 50 book titles, each 50 characters
	BookAuthor BYTE MAX_BOOKS * 50 DUP(0)											; Array for 50 author names, each 50 characters
	BookISBN DWORD MAX_BOOKS DUP(? )												; Array for 50 ISBNs, each 4 bytes(DWORD)
																					; Boolean array to track used slots
	UsedSlots BYTE MAX_BOOKS DUP(0)
																					; User choices and error messages
	UserChoice BYTE 2 DUP(0)														; Reserve space for a 2 - byte string for user type
	OptionChoice BYTE 3 DUP(0)														; Space for storing user choice for options(e.g., 'ii', 'iii', etc.)
	InvalidChoiceMessage BYTE "Invalid choice. Please enter a valid option.", 0
	UpdateMsg BYTE "Press 1 for Updating Book Title" ,0
	UpdateMsg2 BYTE "Press 2 for Updating Author Name ",0
	UpdateMsg3 BYTE "Press 3 for Updating Book Quantity" ,0
	InvalidUpdate BYTE "Invalid choice. Try again",0
																					; customer
																					; Add these to your existing.data section
	CustomerIDPrompt BYTE "Enter Customer ID: ", 0
	CustomerNotFoundMsg BYTE "Customer ID not found. Please register first.", 0
	RentalTitlePrompt BYTE "Enter the book title you want to rent: ", 0
	BookRentedMsg BYTE "Book has been rented successfully!", 0
	BookAlreadyRentedMsg BYTE "Sorry, this book is already rented.", 0
	MaxCustomerNameLen = 50
	MaxCustomers = 50
																					; Arrays for customer management
	CustomerIDs DWORD MaxCustomers DUP(? )
	CustomerISBNs DWORD MaxCustomers DUP (0)
	CustomerNames BYTE MaxCustomers* MaxCustomerNameLen DUP(0)
	CurrentCustomerIndex DWORD 0
	Alotted DWORD 50 DUP(0)
																					; Arrays for rental tracking
	BookRentalStatus BYTE MAX_BOOKS DUP(0)											; 0 = available, 1 = rented
	BookRentedToCustomer DWORD MAX_BOOKS DUP(0)										; Stores customer ID who rented each book
	BookQuantityMsg BYTE "Available copies: ", 0
	NoMoreCopiesMsg BYTE "Sorry, no copies available for rent.", 0
	RentSuccessMsg BYTE "Book rented successfully!", 0
	AlreadyRentedMsg BYTE "You already have this book rented!", 0
	BookAvailability DWORD MAX_BOOKS DUP(5)											; Array to track available copies of each book
	RentalRecords DWORD MAX_BOOKS * 100 DUP(0)										; 2D array to track who rented what
	RegisterStudentMsg BYTE "=== Student Registration ===", 0
	StudentNamePrompt BYTE "Enter Student Name: ", 0
	StudentIDPrompt BYTE "Enter Student ID: ", 0
	RegistrationSuccessMsg BYTE "Student registered successfully!", 0
	DuplicateIDMsg BYTE "Error: Student ID already exists!", 0
																					; Simple student data structures
	MAX_STUDENTS = 50
	StudentCount DWORD 0
	StudentIDs DWORD MAX_STUDENTS DUP(? )
	StudentNames BYTE MAX_STUDENTS * 50 DUP(0); 50 chars per name
	BooksRented DWORD 50 * 3 DUP(0)
	LoginSuccessMsg BYTE "Login successful! Welcome back.", 0
																					; Add these messages to your.data section
	MaxBooksReachedMsg BYTE "You have reached the maximum limit of 1 book.", 0
	InsufficientCopiesMsg BYTE "Sorry, no copies of this book are available.", 0
	CurrentRentalsMsg BYTE "Your current rentals: ", 0
	RentalCountMsg BYTE "Number of books currently rented: ", 0

.code
	main PROC
		mov edx, offset dispay1
		call DisplayWelcomeMessage1
		mov edx, offset dispay2
		call DisplayWelcomeMessage1
		mov edx, offset dispay3
		call DisplayWelcomeMessage1
		call DisplayWelcomeMessage
		MainLoop::
												; Display user type promptand read input
		mov edx, OFFSET UserTypePrompt
		call WriteString
		call ReadInt							; Read input as integer into EAX
		cmp eax, 1
		je LibrarianMenu
		cmp eax, 2
		je CustomerMenu
		jmp MainLoop							; Invalid input, repeat main loop
		LibrarianMenu :
		mov edx, OFFSET LibrarianOptions
		call WriteString
		call ReadInt							; Read menu choice into EAX
		cmp eax, 1
		je AddBook
		cmp eax, 2
		je UpdateBookInfo
		cmp eax, 3
		je DisplayLibraryInfo
		cmp eax, 4
		je DisplayBookInfo
		cmp eax, 5
		je RegisterStudent						; New option
		cmp eax, 6								; Updated exit option
		je EndProgram
		jmp LibrarianMenu						; Invalid choice, repeat librarian menu
		CustomerMenu ::
		je CustomerLogin
		allow::
		mov edx, OFFSET CustomerOptions
		call WriteString
		call ReadInt							; Read menu choice into EAX
		cmp eax, 1
		je ReturnBook
		cmp eax, 2
		je RentBook
		cmp eax, 3
		je MainLoop
		jmp CustomerMenu						; Invalid choice, repeat customer menu
		EndProgram :
		mov edx, OFFSET ExitMessage				; Display exit message if desired
		call WriteString
		call Crlf								; Move to a new line
		exit									; End program
	main ENDP

AddBook PROC
											; Prompt and input book title
	mov edx, offset BookTitlePrompt
	call WriteString
	mov eax, CurrentBookIndex
	mov ebx, 50
	mul ebx
	mov edx, OFFSET BookTitles
	add edx, eax
	mov ecx, 50
	call ReadString
											; Prompt and input book author
	mov edx, offset BookAuthorPrompt
	call WriteString
	mov eax, CurrentBookIndex
	mov ebx, 50
	mul ebx
	mov edx, OFFSET BookAuthors
	add edx, eax
	mov ecx, 50
	call ReadString
											; Prompt and input book ISBN
	mov edx, offset BookISBNPrompt
	call WriteString
	call ReadInt							; User input ISBN is now in eax
	mov ebx, CurrentBookIndex
	mov[BookISBNs + ebx * 4], eax
	mov edx, offset QuantityPrompt
	call WriteString
	call ReadInt;
	mov ebx, CurrentBookIndex
	mov[Quantity + ebx * 4], eax
	inc CurrentBookIndex
	JMP MainLoop
AddBook ENDP

UpdateBookInfo PROC
	L4:
	mov edx, offset UpdateMsg
	call WriteString
	call Crlf
	mov edx, offset UpdateMsg2
	call WriteString
	call Crlf
	mov edx, offset UpdateMsg3
	call WriteString
	call Crlf
	call ReadInt
	cmp eax, 1
	JE UpdateBookTitle
	cmp eax , 2
	JE UpdateAuthorName
	cmp eax, 3
	JE UpdateBookQuantity
	call Crlf
	mov edx, offset InvalidUpdate
	call WriteString
	JMP L4
	UpdateBookinfo ENDP

UpdateAuthorName PROC
											; Prompt for ISBN to search
	mov edx, offset BookISBNPrompt
	call WriteString
	call ReadInt							; User input ISBN is now in eax
	mov ecx, 50								; Loop counter(number of ISBNs to check)
	mov esi, 0								; Index(pointer offset)
	SearchLoop:
	mov edx, BookISBNs[esi]
	cmp eax, edx							; Compare the user input(in eax) with the ISBN in edx
	je ISBNFound							; Jump to ISBNFound if they match
	add esi, 4								; Move to the next ISBN(4 bytes)
	loop SearchLoop							; Continue looping through the array
											; ISBN not found
	mov edx, offset BookNotFoundMessage
	call WriteString
	call Crlf
	jmp ExitUpdate
	ISBNFound :
											; Calculate the index for the arrays(esi contains byte offset, need to convert to array index)
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx									; Convert byte offset to array index
											; Save the index for later use
	push eax								; Save the array index
											; Prompt and get new title
	mov edx, offset UpdateTitlePrompt
	call WriteString
	call Crlf
											; Prompt and get new author
	mov edx, offset UpdateAuthorPrompt
	call WriteString
											; Calculate offset for BookAuthors array
	pop eax									; Restore array index
	mov ebx, 50								; Each author takes 50 bytes
	mul ebx									; eax now contains byte offset for this book
	mov edx, offset BookAuthors
	add edx, eax							; Point to the correct author position
	mov ecx, 50								; Maximum string length
	call ReadString							; Get new author
											; Display success message
	mov edx, offset BookUpdatedMessage
	call WriteString
	call Crlf
	ExitUpdate :
	jmp MainLoop
	ret
UpdateAuthorName ENDP

UpdateBookTitle PROC
											; Prompt for ISBN to search
	mov edx, offset BookISBNPrompt
	call WriteString
	call ReadInt							; User input ISBN is now in eax
	mov ecx, 50								; Loop counter(number of ISBNs to check)
	mov esi, 0								; Index(pointer offset)
	SearchLoop:
	mov edx, BookISBNs[esi]
	cmp eax, edx							; Compare the user input(in eax) with the ISBN in edx
	je ISBNFound							; Jump to ISBNFound if they match
	add esi, 4								; Move to the next ISBN(4 bytes)
	loop SearchLoop							; Continue looping through the array
											; ISBN not found
	mov edx, offset BookNotFoundMessage
	call WriteString
	call Crlf
	jmp ExitUpdate
	ISBNFound :
											; Calculate the index for the arrays(esi contains byte offset, need to convert to array index)
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx									; Convert byte offset to array index
											; Save the index for later use
	push eax								; Save the array index
											; Prompt and get new title
	mov edx, offset UpdateTitlePrompt
	call WriteString
	call Crlf
											; Calculate offset for BookTitles array
	pop eax									; Restore array index
	push eax								; Save it again for later
	mov ebx, 50								; Each title takes 50 bytes
	mul ebx									; eax now contains byte offset for this book
											; Get new title
	mov edx, offset BookTitles
	add edx, eax							; Point to the correct title position
	mov ecx, 50								; Maximum string length
	call ReadString							; Get new title
	call Crlf
											; Display success message
	mov edx, offset BookUpdatedMessage
	call WriteString
	call Crlf
	ExitUpdate :
	jmp MainLoop
	ret
UpdateBookTitle ENDP

UpdateBookQuantity PROC
											; Prompt for ISBN to search
	mov edx, offset BookISBNPrompt
	call WriteString
	call ReadInt							; User input ISBN is now in eax
	mov ecx, 50								; Loop counter(number of ISBNs to check)
	mov esi, 0								; Index(pointer offset)
	SearchLoop:
	mov edx, BookISBNs[esi]
	cmp eax, edx							; Compare the user input(in eax) with the ISBN in edx
	je ISBNFound							; Jump to ISBNFound if they match
	add esi, 4								; Move to the next ISBN(4 bytes)
	loop SearchLoop							; Continue looping through the array
											; ISBN not found
	mov edx, offset BookNotFoundMessage
	call WriteString
	call Crlf
	jmp ExitUpdate
	ISBNFound :
											; Calculate the index for the arrays(esi contains byte offset, need to convert to array index)
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx									; Convert byte offset to array index
											; Save the index for later use
	push eax								; Save the array index
	mov edx, offset QuantityPrompt
	call WriteString
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx
	mov ebx, eax
	call ReadInt;
	mov[Quantity + ebx * 4], eax
	call Crlf
											; Display success message
	mov edx, offset BookUpdatedMessage
	call WriteString
	call Crlf
	ExitUpdate :
	jmp MainLoop
	ret
UpdateBookQuantity ENDP

PurchaseBook PROC
											; Placeholder for PurchaseBook functionality
	ret
PurchaseBook ENDP

RentBook PROC
	LOCAL looper : DWORD
											; Initialize looper
	mov looper, 0
											; Display rent book message
	mov edx, OFFSET BookRentMsg
	call WriteString
											; Read book title to rent
	mov edx, OFFSET BookToRent
	mov ecx, 50								; Maximum characters to read
	call ReadString
	L1 :
											; Calculate the address of the current book title
	mov edi, OFFSET BookTitles				; Destination for comparison
	mov eax, looper
	mov ebx, 50								; Each book is 50 bytes
	mul ebx									; eax = looper * 50
	add edi, eax							; Point to current book
											; Prepare for comparison
	mov esi, OFFSET BookToRent				; Source for comparison
	mov ecx, 50								; Length to compare
	push edi								; Save edi as repe cmpsb will modify it
	repe cmpsb								; Compare strings
	pop edi									; Restore edi
	je found								; If equal, book is found
											; Not found, try next book
	inc looper
	cmp looper, 50							; Check if we've checked all books
	jl L1
	not_found :
	mov edx, OFFSET BookNotFound
	call WriteString
	JMP allow
	found :
											; Check if copies available
	mov esi, looper
	mov eax, esi
	mov ebx, 4;
	mul ebx
	mov esi, eax;
	cmp Quantity[esi], 0					; Check quantity
	jle InsufficientCopies
	dec Quantity[esi]						; Decrease quantity if available
	mov esi, CurrentCustomerIndex
	cmp Alotted[esi], 0;
	jne MaxBooksReached
	mov eax, esi
	mov esi, looper
	mov edx, BookISBNs[esi * 4]				; Get ISBN
	mov esi, eax
	mov Alotted[eax], edx;
	mov edx, OFFSET RentSuccessMsg
	call WriteString
	call Crlf
	jmp CustomerMenu
	MaxBooksReached :
	mov edx, OFFSET MaxBooksReachedMsg
	call WriteString
	call Crlf
	jmp CustomerMenu
	InsufficientCopies :
	mov edx, OFFSET InsufficientCopiesMsg
	call WriteString
	call Crlf
	jmp CustomerMenu
RentBook ENDP

ReturnBook PROC
	LOCAL looper : DWORD, tempISBN : DWORD
	mov looper, 0
	mov esi, CurrentCustomerIndex
	cmp Alotted[esi], 0						; Check if customer has any books
	je NoBookFound
											; Store the ISBN of the book to return
	mov eax, Alotted[esi]					; Get ISBN of book currently allocated
	mov tempISBN, eax						; Store it in local variable
	mov Alotted[esi], 0						; Clear the allocation
	L1:
											; Calculate address of current ISBN
	mov edi, OFFSET BookISBNs				; Get base address of ISBNs array
	mov eax, looper							; Current index
	mov ebx, 4								; Size of each ISBN (4 bytes)
	mul ebx									; Calculate offset
	add edi, eax							; Add offset to base address
											; Compare ISBNs
	mov eax, [edi]							; Get current ISBN from array
	cmp eax, tempISBN						; Compare with book to return
	je found								; If match found, jump to found
											; Not found, try next book
	inc looper
	cmp looper, 50							; Check if we've checked all books
	jl L1									; If not, continue searching
											; If we get here, book wasn't found
	mov edx, OFFSET BookNotFound
	call WriteString
	jmp CustomerMenu
	found:
											; Increment quantity of returned book
	mov esi, looper
	mov eax, esi
	mov ebx, 4
	mul ebx
	mov esi, eax
	inc Quantity[esi]						; Increment available quantity
											; Display success message
	mov edx, OFFSET BookReturnMsg
	call WriteString
	call Crlf
											; Display updated quantity
	mov eax, Quantity[esi]
	call WriteInt
	jmp CustomerMenu
	NoBookFound:
	mov edx, OFFSET f2
	call WriteString
	jmp CustomerMenu
	ret
ReturnBook ENDP

displayLibraryInfo PROC
	mov ecx, 50								; Loop counter(number of ISBNs to check)
	mov esi, 0								; Index(pointer offset)
	SearchLoop:
	mov edx, BookISBNs[esi]
	mov eax, edx
	cmp eax, 0
	jne ValidBook;
	JMP MainLoop
	ValidBook :
	mov edx, offset BookTitleMsg
	call WriteString
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx
	mov ebx, 50
	mul ebx
	mov edx, offset BookTitles
	add edx, eax
											; mov ecx, 50
	call WriteString
	call Crlf
	mov edx, offset BookAuthorMsg
	call WriteString
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx
	mov ebx, 50
	mul ebx
	mov edx, offset BookAuthors
	add edx, eax
											; mov ecx, 50
	call WriteString
	call Crlf
	mov edx, offset QuantityPrompt
	call WriteString
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx
	mov ebx, eax
	mov eax, [Quantity + ebx * 4]
	call WriteInt
	call Crlf
	call Crlf
	add esi, 4
	JMP SearchLoop
	ret
displayLibraryInfo ENDP

DisplayBookInfo PROC
	mov edx, offset BookISBNPrompt
	call WriteString
	call ReadInt							; User input is now in eax
	mov ecx, 50								; Loop counter(number of ISBNs to check)
	mov esi, 0								; Index(pointer offset)
	SearchLoop:
	mov edx, BookISBNs[esi]
	cmp eax, edx							; Compare the user input(in eax) with the ISBN in edx
	je ISBNFound							; Jump to ISBNFound if they match
	add esi, 4								; Move to the next ISBN(4 bytes)
	loop SearchLoop							; Continue looping through the array
	JMP CustomerMenu
	ISBNFound :
	mov edx, offset BookTitleMsg
	call WriteString
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx
	mov ebx, 50
	mul ebx
	mov edx, offset BookTitles
	add edx, eax
											; mov ecx, 50
	call WriteString
	call Crlf
	mov edx, offset BookAuthorMsg
	call WriteString
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx
	mov ebx, 50
	mul ebx
	mov edx, offset BookAuthors
	add edx, eax
											; mov ecx, 50
	call WriteString
	call Crlf
	mov edx, offset QuantityPrompt
	call WriteString
	call Crlf
	mov ebx, 4
	mov edx, 0
	mov eax, esi
	div ebx
	mov ebx, eax
	mov eax, [Quantity + ebx * 4]
	call WriteInt
	call Crlf
	JMP MainLoop
	ret
DisplayBookInfo ENDP

ExitProgram PROC
	exit
ExitProgram ENDP

DisplayWelcomeMessage PROC
	mov eax, 0Ch
	call SetTextColor
	mov esi, OFFSET Line1
	PrintCharacterLoop:
	mov al, [esi]							; Load the current character into AL
	cmp al, 0								; Check if it's the null terminator (end of string)
	je DonePrinting							; If it is, exit the loop
	call WriteChar							; Print the current character
	Push eax
	Mov eax,10
	call Delay								; Wait for a brief moment before printing the next character
	Pop eax
	inc esi									; Move to the next character
	jmp PrintCharacterLoop					; Repeat the loop for the next character
	DonePrinting:
	call Crlf
	call Crlf
	call Clrscr
	mov eax, 07h
	call SetTextColor
DisplayWelcomeMessage ENDP

DisplayWelcomeMessage1 PROC
											; Set text color
	mov eax, 0Ch
	call SetTextColor
	call WriteString
	mov eax, 650
	call Delay
											; Clear the screen
	call Clrscr
	mov edx, offset emptystring
	mov eax, 07h
	call SetTextColor
	ret
DisplayWelcomeMessage1 ENDP

InvalidChoice PROC
	mov edx, OFFSET InvalidChoiceMessage	; Load the address of the invalid choice message
	call WriteString						; Display the invalid choice message
	call Crlf								; Move to a new line
	ret										; Return to the caller
InvalidChoice ENDP

EndProgram PROC
	mov edx, OFFSET ExitMessage				; Load the exit message
	call WriteString						; Display the exit message
	call Crlf								; Move to a new line
											; Any additional cleanup code can go here if needed
	exit									; Exit the program(if your environment supports exit)
EndProgram ENDP

CustomerLogin PROC
											; Prompt for customer ID
	mov edx, OFFSET CustomerIDPrompt
	call WriteString
	call ReadInt
	mov ebx, eax
											; Search through StudentIDs array
	mov ecx, StudentCount					; Use StudentCount instead of MaxCustomers
	mov esi, 0
	SearchStudentID:
	cmp ecx, 0
	je StudentNotFound
	mov eax, StudentIDs[esi * 4]
	cmp ebx, eax
	je StudentFound
	inc esi
	dec ecx
	jmp SearchStudentID
	StudentFound :
	mov esi, eax
	mov ebx , 4
	mul ebx
	mov CurrentCustomerIndex, eax
											; Display success message
	mov edx, OFFSET LoginSuccessMsg
	call WriteString
	call Crlf
	mov eax, 1								; Return 1 for success
	jmp LoginExit
	StudentNotFound :
	mov CurrentCustomerIndex, 0
	mov edx, OFFSET CustomerNotFoundMsg
	call WriteString
	call Crlf
	mov eax, 0								; Return 0 for failure
	JMP MainLoop
	LoginExit :
	JMP allow
	ret
CustomerLogin ENDP

RegisterStudent PROC
											; Display registration header
	mov edx, OFFSET RegisterStudentMsg
	call WriteString
	call Crlf
											; Get Student ID
	GetStudentID :
	mov edx, OFFSET StudentIDPrompt
	call WriteString
	call ReadInt
	mov ebx, eax							; Save ID in ebx
											; Check if ID already exists
	mov ecx, StudentCount
	mov esi, 0
	CheckIDLoop:
	cmp ecx, 0
	je IDCheckDone
	cmp ebx, StudentIDs[esi * 4]
	je DuplicateID
	inc esi
	dec ecx
	jmp CheckIDLoop
	DuplicateID :
	mov edx, OFFSET DuplicateIDMsg
	call WriteString
	call Crlf
	jmp GetStudentID
	IDCheckDone :
											; Store the ID
	mov esi, StudentCount
	mov StudentIDs[esi * 4], ebx
											; Get Student Name
	mov edx, OFFSET StudentNamePrompt
	call WriteString
											; Calculate offset for name storage
	mov eax, StudentCount
	mov ebx, 50								; 50 chars per name
	mul ebx
	mov edi, eax;
											; Read and store name
	mov edx, OFFSET StudentNames
	add edx, edi
	mov ecx, 49								; Max name length			(leave room for null)
	call ReadString
											; Increment student count
	inc StudentCount
											; Display success message
	mov edx, OFFSET RegistrationSuccessMsg
	call WriteString
	call Crlf
	jmp MainLoop
	ret
RegisterStudent ENDP

exit
End main