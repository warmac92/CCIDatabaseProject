DROP DATABASE IF EXISTS ITCS6160Project;
CREATE DATABASE ITCS6160Project;

USE ITCS6160Project;

/* Create table Students */
CREATE TABLE Students (
    SID CHAR(9),
    Name VARCHAR(50),
    Phone VARCHAR(50),
    Age INT,
    Address VARCHAR(50),
    PRIMARY KEY (SID)
);

/* Create table Courses */
CREATE TABLE Courses (
    CID VARCHAR(9),
    Name VARCHAR(100),
    Classroom VARCHAR(50),
    Professor_Name VARCHAR(50),
    Class_Time VARCHAR(50),
    PRIMARY KEY (CID)
);

/* Create table Faculties */
CREATE TABLE Faculties (
    SSN CHAR(9),
    Name VARCHAR(50),
    Title VARCHAR(100),
    Email VARCHAR(50),
    Phone_Num VARCHAR(50),
    Office_Num VARCHAR(50),
    Research_Areas VARCHAR(100),
    PRIMARY KEY (SSN)
);

/* Create table Departments */
CREATE TABLE Departments (
    DID CHAR(4),
    Name VARCHAR(50),
    Faculties_Num INT,
    Main_Office VARCHAR(50),
    PRIMARY KEY (DID)
);

/* Create table Enroll */
CREATE TABLE Enroll (
    SID CHAR(9),
    CID VARCHAR(9),
    Grade CHAR(1),
    PRIMARY KEY (SID , CID),
    FOREIGN KEY (SID)
        REFERENCES Students (SID),
    FOREIGN KEY (CID)
        REFERENCES Courses (CID)
);

/* Create table Teach */
CREATE TABLE Teach (
    SSN CHAR(9),
    CID VARCHAR(9),
    Time VARCHAR(50),
    PRIMARY KEY (SSN , CID),
    FOREIGN KEY (SSN)
        REFERENCES Faculties (SSN),
    FOREIGN KEY (CID)
        REFERENCES Courses (CID)
);

/* Create table Work_In */
CREATE TABLE Work_In (
    SSN CHAR(9),
    DID CHAR(4),
    Since VARCHAR(50),
    PRIMARY KEY (SSN , DID),
    FOREIGN KEY (SSN)
        REFERENCES Faculties (SSN),
    FOREIGN KEY (DID)
        REFERENCES Departments (DID)
);

/* Insert data into table Students */
INSERT INTO Students 
  (SID, Name, Phone, Age, Address)
VALUES 
  ('800900001','AAA','7040010001','18','9201 University City Blvd. Belk Hall'),
  ('800900002','BBB','7040010002','18','9201 University City Blvd. Belk Hall'), 
  ('800900003','CCC','7040010003','18','9201 University City Blvd. Belk Hall'),
  ('800900004','DDD','7040010004','18','9201 University City Blvd. Belk Hall'),
  ('800900005','EEE','7040010005','18','9201 University City Blvd. Belk Hall'),
  ('800900006','FFF','7040010006','18','9201 University City Blvd. Belk Hall'),
  ('800900007','GGG','7040010007','18','9201 University City Blvd. Belk Hall'),
  ('800900008','HHH','7040010008','18','9201 University City Blvd. Belk Hall'),
  ('800900009','III','7040010009','18','9201 University City Blvd. Belk Hall'),
  ('800900010','JJJ','7040010010','18','9201 University City Blvd. Belk Hall'),
  ('800900011','KKK','7040010011','18','9201 University City Blvd. Belk Hall'), 
  ('800900012','LLL','7040010012','18','9201 University City Blvd. Belk Hall'),
  ('800900013','MMM','7040010013','18','9201 University City Blvd. Belk Hall'),
  ('800900014','NNN','7040010014','18','9201 University City Blvd. Belk Hall'),
  ('800900015','OOO','7040010015','18','9201 University City Blvd. Belk Hall'),
  ('800900016','PPP','7040010016','18','9201 University City Blvd. Belk Hall'),
  ('800900017','QQQ','7040010017','18','9201 University City Blvd. Belk Hall'),
  ('800900018','RRR','7040010018','18','9201 University City Blvd. Belk Hall'),
  ('800900019','SSS','7040010019','18','9201 University City Blvd. Belk Hall'),
  ('800900020','TTT','7040010020','18','9201 University City Blvd. Belk Hall'),
  ('800900021','UUU','7040010021','18','9201 University City Blvd. Belk Hall'), 
  ('800900022','VVV','7040010022','18','9201 University City Blvd. Belk Hall'),
  ('800900023','WWW','7040010023','18','9201 University City Blvd. Belk Hall'),
  ('800900024','XXX','7040010024','18','9201 University City Blvd. Belk Hall'),
  ('800900025','YYY','7040010025','18','9201 University City Blvd. Belk Hall'),
  ('800900026','ZZZ','7040010026','18','9201 University City Blvd. Belk Hall'),
  ('800900027','AAB','7040010027','19','9201 University City Blvd. Wallis Hall'),
  ('800900028','BBC','7040010028','19','9201 University City Blvd. Wallis Hall'),
  ('800900029','CCD','7040010029','19','9201 University City Blvd. Wallis Hall'),
  ('800900030','DDE','7040010030','19','9201 University City Blvd. Wallis Hall'),
  ('800900031','EEF','7040010031','19','9201 University City Blvd. Wallis Hall'), 
  ('800900032','FFG','7040010032','19','9201 University City Blvd. Wallis Hall'),
  ('800900033','GGH','7040010033','19','9201 University City Blvd. Wallis Hall'),
  ('800900034','HHI','7040010034','19','9201 University City Blvd. Wallis Hall'),
  ('800900035','IIJ','7040010035','19','9201 University City Blvd. Wallis Hall'),
  ('800900036','JJK','7040010036','19','9201 University City Blvd. Wallis Hall'),
  ('800900037','KKL','7040010037','19','9201 University City Blvd. Wallis Hall'),
  ('800900038','LLM','7040010038','19','9201 University City Blvd. Wallis Hall'),
  ('800900039','MMN','7040010039','19','9201 University City Blvd. Wallis Hall'),
  ('800900040','NNO','7040010040','19','9201 University City Blvd. Wallis Hall'),
  ('800900041','OOP','7040010041','19','9201 University City Blvd. Wallis Hall'), 
  ('800900042','PPQ','7040010042','19','9201 University City Blvd. Wallis Hall'),
  ('800900043','QQR','7040010043','19','9201 University City Blvd. Wallis Hall'),
  ('800900044','RRS','7040010044','19','9201 University City Blvd. Wallis Hall'),
  ('800900045','SST','7040010045','19','9201 University City Blvd. Wallis Hall'),
  ('800900046','TTU','7040010046','19','9201 University City Blvd. Wallis Hall'),
  ('800900047','UUV','7040010047','19','9201 University City Blvd. Wallis Hall'),
  ('800900048','VVW','7040010048','19','9201 University City Blvd. Wallis Hall'),
  ('800900049','WWX','7040010049','19','9201 University City Blvd. Wallis Hall'),
  ('800900050','XXY','7040010050','19','9201 University City Blvd. Wallis Hall'),
  ('800900051','YYZ','7040010051','19','9201 University City Blvd. Wallis Hall'), 
  ('800900052','ZZA','7040010052','19','9201 University City Blvd. Wallis Hall'),
  ('800900053','ABA','7040010053','20','9201 University City Blvd. Martin Hall'),
  ('800900054','BCB','7040010054','20','9201 University City Blvd. Martin Hall'),
  ('800900055','CDC','7040010055','20','9201 University City Blvd. Martin Hall'),
  ('800900056','DED','7040010056','20','9201 University City Blvd. Martin Hall'),
  ('800900057','EFE','7040010057','20','9201 University City Blvd. Martin Hall'),
  ('800900058','FGF','7040010058','20','9201 University City Blvd. Martin Hall'),
  ('800900059','GHG','7040010059','20','9201 University City Blvd. Martin Hall'),
  ('800900060','HIH','7040010060','20','9201 University City Blvd. Martin Hall'),
  ('800900061','IJI','7040010061','20','9201 University City Blvd. Martin Hall'), 
  ('800900062','JKJ','7040010062','20','9201 University City Blvd. Martin Hall'),
  ('800900063','KLK','7040010063','20','9201 University City Blvd. Martin Hall'),
  ('800900064','LML','7040010064','20','9201 University City Blvd. Martin Hall'),
  ('800900065','MNM','7040010065','20','9201 University City Blvd. Martin Hall'),
  ('800900066','NON','7040010066','20','9201 University City Blvd. Martin Hall'),
  ('800900067','OPO','7040010067','20','9201 University City Blvd. Martin Hall'),
  ('800900068','PQP','7040010068','20','9201 University City Blvd. Martin Hall'),
  ('800900069','QRQ','7040010069','20','9201 University City Blvd. Martin Hall'),
  ('800900070','RSR','7040010070','20','9201 University City Blvd. Martin Hall'),
  ('800900071','STS','7040010071','20','9201 University City Blvd. Martin Hall'), 
  ('800900072','TUT','7040010072','20','9201 University City Blvd. Martin Hall'),
  ('800900073','UVU','7040010073','20','9201 University City Blvd. Martin Hall'),
  ('800900074','VWV','7040010074','20','9201 University City Blvd. Martin Hall'),
  ('800900075','WXW','7040010075','20','9201 University City Blvd. Martin Hall'),
  ('800900076','XYX','7040010076','20','9201 University City Blvd. Martin Hall'),
  ('800900077','YZY','7040010077','20','9201 University City Blvd. Martin Hall'),
  ('800900078','ZAZ','7040010078','20','9201 University City Blvd. Martin Hall'),
  ('800900079','BAA','7040010079','21','9201 University City Blvd. Elm Hall'),
  ('800900080','CBB','7040010080','21','9201 University City Blvd. Elm Hall'),
  ('800900081','DCC','7040010081','21','9201 University City Blvd. Elm Hall'), 
  ('800900082','EDD','7040010082','21','9201 University City Blvd. Elm Hall'),
  ('800900083','FEE','7040010083','21','9201 University City Blvd. Elm Hall'),
  ('800900084','GFF','7040010084','21','9201 University City Blvd. Elm Hall'),
  ('800900085','HGG','7040010085','21','9201 University City Blvd. Elm Hall'),
  ('800900086','IHH','7040010086','21','9201 University City Blvd. Elm Hall'),
  ('800900087','JII','7040010087','21','9201 University City Blvd. Elm Hall'),
  ('800900088','KJJ','7040010088','21','9201 University City Blvd. Elm Hall'),
  ('800900089','LKK','7040010089','21','9201 University City Blvd. Elm Hall'),
  ('800900090','MLL','7040010090','21','9201 University City Blvd. Elm Hall'),
  ('800900091','NMM','7040010091','21','9201 University City Blvd. Elm Hall'), 
  ('800900092','ONN','7040010092','21','9201 University City Blvd. Elm Hall'),
  ('800900093','POO','7040010093','21','9201 University City Blvd. Elm Hall'),
  ('800900094','QPP','7040010094','21','9201 University City Blvd. Elm Hall'),
  ('800900095','RQQ','7040010095','21','9201 University City Blvd. Elm Hall'),
  ('800900096','SRR','7040010096','21','9201 University City Blvd. Elm Hall'),
  ('800900097','TSS','7040010097','21','9201 University City Blvd. Elm Hall'),
  ('800900098','UTT','7040010098','21','9201 University City Blvd. Elm Hall'),
  ('800900099','VUU','7040010099','21','9201 University City Blvd. Elm Hall'),
  ('800900100','WVV','7040010100','21','9201 University City Blvd. Elm Hall'),
  ('800900101','XWW','7040010001','21','9201 University City Blvd. Elm Hall'),
  ('800900102','YXX','7040010002','21','9201 University City Blvd. Elm Hall'), 
  ('800900103','ZYY','7040010003','21','9201 University City Blvd. Elm Hall'),
  ('800900104','AZZ','7040010004','21','9201 University City Blvd. Elm Hall'),
  ('800900105','AAC','7040010105','22','9201 University City Blvd. Maple Hall'),
  ('800900106','BBD','7040010106','22','9201 University City Blvd. Maple Hall'),
  ('800900107','CCE','7040010107','22','9201 University City Blvd. Maple Hall'),
  ('800900108','DDF','7040010108','22','9201 University City Blvd. Maple Hall'),
  ('800900109','EEG','7040010109','22','9201 University City Blvd. Maple Hall'),
  ('800900110','FFH','7040010110','22','9201 University City Blvd. Maple Hall'),
  ('800900111','GGI','7040010111','22','9201 University City Blvd. Maple Hall'), 
  ('800900112','HHJ','7040010112','22','9201 University City Blvd. Maple Hall'),
  ('800900113','IIK','7040010113','22','9201 University City Blvd. Maple Hall'),
  ('800900114','JJL','7040010114','22','9201 University City Blvd. Maple Hall'),
  ('800900115','KKM','7040010115','22','9201 University City Blvd. Maple Hall'),
  ('800900116','LLN','7040010116','22','9201 University City Blvd. Maple Hall'),
  ('800900117','MMO','7040010117','22','9201 University City Blvd. Maple Hall'),
  ('800900118','NNP','7040010118','22','9201 University City Blvd. Maple Hall'),
  ('800900119','OOQ','7040010119','22','9201 University City Blvd. Maple Hall'),
  ('800900120','PPR','7040010120','22','9201 University City Blvd. Maple Hall'),
  ('800900121','QQS','7040010121','22','9201 University City Blvd. Maple Hall'), 
  ('800900122','RRT','7040010122','22','9201 University City Blvd. Maple Hall'),
  ('800900123','SSU','7040010123','22','9201 University City Blvd. Maple Hall'),
  ('800900124','TTV','7040010124','22','9201 University City Blvd. Maple Hall'),
  ('800900125','UUW','7040010125','22','9201 University City Blvd. Maple Hall'),
  ('800900126','VVX','7040010126','22','9201 University City Blvd. Maple Hall'),
  ('800900127','WWY','7040010127','22','9201 University City Blvd. Maple Hall'),
  ('800900128','XXZ','7040010128','22','9201 University City Blvd. Maple Hall'),
  ('800900129','YYA','7040010129','22','9201 University City Blvd. Maple Hall'),
  ('800900130','ZZB','7040010130','22','9201 University City Blvd. Maple Hall'),
  ('800900131','ACA','7040010131','23','9201 University City Blvd. Witherspoon Hall'), 
  ('800900132','BDB','7040010132','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900133','CEC','7040010133','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900134','DFD','7040010134','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900135','EGE','7040010135','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900136','FHF','7040010136','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900137','GIG','7040010137','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900138','HJH','7040010138','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900139','IKI','7040010139','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900140','JLJ','7040010140','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900141','KMK','7040010141','23','9201 University City Blvd. Witherspoon Hall'), 
  ('800900142','LNL','7040010142','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900143','MOM','7040010143','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900144','NPN','7040010144','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900145','OQO','7040010145','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900146','PRP','7040010146','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900147','QSQ','7040010147','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900148','RTR','7040010148','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900149','SUS','7040010149','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900150','TVT','7040010150','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900151','UWU','7040010151','23','9201 University City Blvd. Witherspoon Hall'), 
  ('800900152','VXV','7040010152','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900153','WYW','7040010153','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900154','XZX','7040010154','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900155','YAY','7040010155','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900156','ZBZ','7040010156','23','9201 University City Blvd. Witherspoon Hall'),
  ('800900157','CAA','7040010157','24','9201 University City Blvd. Miltimore Hall'),
  ('800900158','DBB','7040010158','24','9201 University City Blvd. Miltimore Hall'),
  ('800900159','ECC','7040010159','24','9201 University City Blvd. Miltimore Hall'),
  ('800900160','FDD','7040010160','24','9201 University City Blvd. Miltimore Hall'),
  ('800900161','GEE','7040010161','24','9201 University City Blvd. Miltimore Hall'), 
  ('800900162','HFF','7040010162','24','9201 University City Blvd. Miltimore Hall'),
  ('800900163','IGG','7040010163','24','9201 University City Blvd. Miltimore Hall'),
  ('800900164','JHH','7040010164','24','9201 University City Blvd. Miltimore Hall'),
  ('800900165','KII','7040010165','24','9201 University City Blvd. Miltimore Hall'),
  ('800900166','LJJ','7040010166','24','9201 University City Blvd. Miltimore Hall'),
  ('800900167','MKK','7040010167','24','9201 University City Blvd. Miltimore Hall'),
  ('800900168','NLL','7040010168','24','9201 University City Blvd. Miltimore Hall'),
  ('800900169','OMM','7040010169','24','9201 University City Blvd. Miltimore Hall'),
  ('800900170','PNN','7040010170','24','9201 University City Blvd. Miltimore Hall'),
  ('800900171','QOO','7040010171','24','9201 University City Blvd. Miltimore Hall'), 
  ('800900172','RPP','7040010172','24','9201 University City Blvd. Miltimore Hall'),
  ('800900173','SQQ','7040010173','24','9201 University City Blvd. Miltimore Hall'),
  ('800900174','TRR','7040010174','24','9201 University City Blvd. Miltimore Hall'),
  ('800900175','USS','7040010175','24','9201 University City Blvd. Miltimore Hall'),
  ('800900176','VTT','7040010176','24','9201 University City Blvd. Miltimore Hall'),
  ('800900177','WUU','7040010177','24','9201 University City Blvd. Miltimore Hall'),
  ('800900178','XVV','7040010178','24','9201 University City Blvd. Miltimore Hall'),
  ('800900179','YWW','7040010179','24','9201 University City Blvd. Miltimore Hall'),
  ('800900180','ZXX','7040010180','24','9201 University City Blvd. Miltimore Hall'),
  ('800900181','AYY','7040010181','24','9201 University City Blvd. Miltimore Hall'), 
  ('800900182','BZZ','7040010182','24','9201 University City Blvd. Miltimore Hall'),
  ('800900183','AAD','7040010183','25','9201 University City Blvd. Pine Hall'),
  ('800900184','BBE','7040010184','25','9201 University City Blvd. Pine Hall'),
  ('800900185','CCF','7040010185','25','9201 University City Blvd. Pine Hall'),
  ('800900186','DDG','7040010186','25','9201 University City Blvd. Pine Hall'),
  ('800900187','EEH','7040010187','25','9201 University City Blvd. Pine Hall'),
  ('800900188','FFI','7040010188','25','9201 University City Blvd. Pine Hall'),
  ('800900189','GGJ','7040010189','25','9201 University City Blvd. Pine Hall'),
  ('800900190','HHK','7040010190','25','9201 University City Blvd. Pine Hall'),
  ('800900191','IIL','7040010191','25','9201 University City Blvd. Pine Hall'), 
  ('800900192','JJM','7040010192','25','9201 University City Blvd. Pine Hall'),
  ('800900193','KKN','7040010193','25','9201 University City Blvd. Pine Hall'),
  ('800900194','LLO','7040010194','25','9201 University City Blvd. Pine Hall'),
  ('800900195','MMP','7040010195','25','9201 University City Blvd. Pine Hall'),
  ('800900196','NNQ','7040010196','25','9201 University City Blvd. Pine Hall'),
  ('800900197','OOR','7040010197','25','9201 University City Blvd. Pine Hall'),
  ('800900198','PPS','7040010198','25','9201 University City Blvd. Pine Hall'),
  ('800900199','QQT','7040010199','25','9201 University City Blvd. Pine Hall'),
  ('800900200','RRU','7040010200','25','9201 University City Blvd. Pine Hall'),
  ('800900201','SSV','7040010201','25','9201 University City Blvd. Pine Hall'),
  ('800900202','TTW','7040010202','25','9201 University City Blvd. Pine Hall'),
  ('800900203','UUX','7040010203','25','9201 University City Blvd. Pine Hall'),
  ('800900204','VVY','7040010204','25','9201 University City Blvd. Pine Hall'),
  ('800900205','WWZ','7040010205','25','9201 University City Blvd. Pine Hall'),
  ('800900206','XXA','7040010206','25','9201 University City Blvd. Pine Hall'),
  ('800900207','YYB','7040010207','25','9201 University City Blvd. Pine Hall'),
  ('800900208','ZZC','7040010208','25','9201 University City Blvd. Pine Hall');

/* Insert data into table Courses */
INSERT INTO Courses 
  (CID, Name, Classroom, Professor_Name, Class_Time)
VALUES 
  ('ITCS1101','Introduction to Computer Concepts','NONE INTRNET','Susan Medlin','TBA'),
  ('ITCS1102','Advanced Internet Concepts','NONE INTRNET','Jason Karp','TBA'),
  ('ITCS1212','Introduction to Computer Science','KNNDY 236','Mohsen Dorodchi','TR 02:00 pm-03:15 pm'),
  ('ITCS1212L','Programming Lab I','CONE 164','Mohsen Dorodchi','M 11:00 am-01:45 pm'),
  ('ITCS1213','Introduction to Computer ScienceII','WOODW 106','Lorrie Lehmann','MW 02:00 pm-03:15 pm'),
  ('ITCS1213L','Programming Lab II','CONE 165','Lorrie Lehmann','M 11:00 am-01:45 pm'),
  ('ITCS1610','Computing Applications Seminar','CHHS 122','Stephen Michael MacNeil','F 02:00 pm-04:45 pm'),
  ('ITCS2175','Logic and Algorithms','WOODW 135','Emanuela Marasco','MW 08:00 am-09:15 am'),
  ('ITCS2214','Data Structures','WOODW 135','Min Shin','MW 12:30 pm-01:45 pm'),
  ('ITCS2215','Design and Analysis of Algorithms','WOODW 140','Kalpathi Subramanian','TR 09:30 am-10:45 am'),
  ('ITCS3050','Topics in Computer Science','WOODW 135','Richard Lejk','F 12:30 pm-01:45 pm'),
  ('ITCS3112','Design and Implementation of Object-Oriented Systems','ATKNS 126','Sara Scott','TR 08:00 am-09:15 am'),
  ('ITCS3134','Digital Image Processing','WOODW 140','Min Shin','MW 08:00 am-09:15 am'),
  ('ITCS3146','Operating Systems and Networking','WOODW 135','Bojan Cukic','MW 09:30 am-10:45 am'),
  ('ITCS3153','Introduction to Artificial Intelligence','WOODW 135','Richard Souvenir','MW 11:00 am-12:15 pm'),
  ('ITCS3155','Software Engineering','WOODW 135','Richard Ilson','T 09:30 am-12:15 pm'),
  ('ITCS3160','Data Base Design and Implementation','NONE INTRNET','Sara Scott','TBA'),
  ('ITCS3166','Introduction to Computer Networks','NONE INTRNET','Diane Cassidy','TBA'),
  ('ITCS3181','Logic and Computer Systems','WOODW 106','Taghi Mostafavi','TR 11:00 am-12:15 pm'),
  ('ITCS3181L','Computer Systems Lab and Recitation','WOODW 140','Taghi Mostafavi','M 09:30 am-12:15 pm'),
  ('ITCS3211','Computing Leaders Team Projects (1)','CHHS 122','Stephen Michael MacNeil','F 03:30 pm-04:45 pm'),
  ('ITCS3212','Computing Leaders Team Leaders (1)','CHHS 122','Stephen Michael MacNeil','F 03:30 pm-04:45 pm'),
  ('ITCS3216','Introduction to Cognitive Science','COLVD 3120','Wlodek Zadrozny','TR 02:00 pm-03:15 pm'),
  ('ITCS3590','Computer Science Cooperative Education and 49ership Experience','NONE INTRNET','Richard Lejk','TBA'),
  ('ITCS3610','Computing Leaders Seminar','CHHS 122','Stephen Michael MacNeil','F 02:00 pm-04:45 pm'),
  ('ITCS3688','Computers and Their Impact on Society','WOODW 130','Richard Lejk','MW 08:00 am-09:15 am'),
  ('ITCS3695','Computer Science Cooperative Education Seminar','WOODW 125','Richard Lejk','TR 12:30 pm-01:45 pm'),
  ('ITCS4010','Topics in Computer Science','WOODW 155','Erik Saule','TR 02:00 pm-03:15 pm'),
  ('ITCS4102','Programming Languages','WOODW 135','Dewan Ahmed','W 02:00 pm-04:45 pm'),
  ('ITCS4121','Information Visualization','FRET 116','Zachary Wartell','MW 06:30 pm-07:45 pm'),
  ('ITCS4122','Visual Analytics','WOODW 135','Jing Yang','M 02:00 pm-04:45 pm'),
  ('ITCS4145','Parallel Computing','WOODW 130','Anthony B Wilkinson','MW 05:00 pm-06:15 pm'),
  ('ITCS4155','Software Development Projects','KNNDY 236','Jamie Payton','W 09:30 am-12:15 pm'),
  ('ITCS4161','Intellectual Property Aspects of Computing','WOODW 135','James Frazier','MW 05:00 pm-06:15 pm'),
  ('ITCS4180','Mobile Application Development','KNNDY 236','Mohamed Shehab','M 06:30 pm-09:15 pm'),
  ('ITCS4230','Introduction to Game Design and Development','ATKNS 126','Brianna Leigh Chen ','MW 03:30 pm-04:45 pm'),
  ('ITCS4231','Advanced Game Design and Development','ATKNS 126','Daniel Jugan','MW 12:30 pm-01:45 pm'),
  ('ITCS4232','Game Design and Development Studio','TBA','Daniel Jugan','TBA'),
  ('ITCS4650','Senior Project','TBA','Yi Deng','TBA'),
  ('ITCS4651','Senior Project','TBA','Yi Deng','TBA'),
  ('ITCS4681','Senior Design I','TBA','Taghi Mostafavi','TBA'),
  ('ITCS4682','Senior Design II','TBA','Taghi Mostafavi','TBA'),
  ('ITCS4990','Undergraduate Research','TBA','Jamie Payton','TBA'),
  ('ITCS5010','Topics in Computer Science','WOODW 155','Erik Saule','TR 02:00 pm-03:15 pm'),
  ('ITCS5102','Survey of Programming Languages','WOODW 135','Dewan Ahmed','W 02:00 pm-04:45 pm'),
  ('ITCS5121','Information Visualization','FRET 116','Zachary Wartell','MW 06:30 pm-07:45 pm'),
  ('ITCS5122','Visual Analytics','CITY 506','Wenwen Dou','R 05:30 pm-08:15 pm'),
  ('ITCS5145','Parallel Computing','NONE INTRNET','Anthony B Wilkinson','TBA'),
  ('ITCS5161','Intellectual Property Aspects of Computing','WOODW 135','James Frazier','MW 05:00 pm-06:15 pm'),
  ('ITCS5180','Mobile Application Development','KNNDY 236','Mohamed Shehab','M 06:30 pm-09:15 pm'),
  ('ITCS5231','Advanced Game Design and Development','ATKNS 126','Daniel Jugan','MW 12:30 pm-01:45 pm'),
  ('ITCS5232','Game Design and Development Studio','TBA','Dewan Ahmed','TBA'),
  ('ITCS6050','Topics in Intelligent Systems','WOODW 130','Jing Xiao','T 09:30 am-12:15 pm'),
  ('ITCS6100','Big Data Analytics for Competitive Advantage','CITY 601','Wlodek Zadrozny','W 12:00 pm-02:45 pm'),
  ('ITCS6112','Software System Design and Implementation','KNNDY 236','Harini Ramaprasad','TR 08:00 am-09:15 am'),
  ('ITCS6114','Algorithms and Data Structures','WOODW 130','Srinivas Akella','MW 02:00 pm-03:15 pm'),
  ('ITCS6124','Illustrative Visualization','WOODW 130','Aidong Lu','MW 12:30 pm-01:45 pm'),
  ('ITCS6152','Robot Motion Planning','WOODW 130','Srinivas Akella','MW 11:00 am-12:15 pm'),
  ('ITCS6155','Knowledge-Based Systems','WOODW 130','Zbigniew Ras','R 09:30 am-12:15 pm'),
  ('ITCS6156','Machine Learning','WOODW 130','Richard Souvenir','MW 03:30 pm-04:45 pm'),
  ('ITCS6160','Database Systems','WOODW 130','Jianping Fan','R 03:30 pm-06:15 pm'),
  ('ITCS6162','Knowledge Discovery in Databases','WOODW 130','Yong Ge','F 11:00 am-01:45 pm'),
  ('ITCS6163','Data Warehousing','WOODW 155','Atif Mohammad','F 06:30 pm-09:15 pm'),
  ('ITCS6166','Computer Communications and Networks','WOODW 130','Dewan Ahmed','M 06:30 pm-09:15 pm'),
  ('ITCS6167','Advanced Networking Protocols','WOODW 140','Yu Wang','F 09:30 am-12:15 pm'),
  ('ITCS6216','Introduction to Cognitive Science','COLVD 4014','Wlodek Zadrozny','T 09:30 am-12:15 pm'),
  ('ITCS6500','Complex Adaptive Systems','WOODW 135','Mirsad Hadzikadic','R 06:30 pm-09:15 pm'),
  ('ITCS6880','Individual Study','TBA','Angelina Tzacheva','TBA'),
  ('ITCS6991','Computer Science Thesis','TBA','Keh-Hsun Chen','TBA'),
  ('ITCS8050','Topics in Intelligent Systems','WOODW 130','Jing Xiao','T 09:30 am-12:15 pm'),
  ('ITCS8112','Software Systems Design and Implementation','KNNDY 236','Mohsen Dorodchi','TR 05:00 pm-06:15 pm'),
  ('ITCS8114','Algorithms and Data Structures','WOODW 130','Shaoting Zhang','R 06:30 pm-09:15 pm'),
  ('ITCS8124','Illustrative Visualization','WOODW 130','Aidong Lu','MW 12:30 pm-01:45 pm'),
  ('ITCS8155','Knowledge-Based Systems','WOODW 130','Zbigniew Ras','R 09:30 am-12:15 pm'),
  ('ITCS8156','Machine Learning','WOODW 130','Richard Souvenir','MW 03:30 pm-04:45 pm'),
  ('ITCS8160','Database Systems','WOODW 130','Jianping Fan','R 03:30 pm-06:15 pm'),
  ('ITCS8162','Knowledge Discovery in Databases','WOODW 130','Angelina Tzacheva','T 05:00 pm-07:45 pm'),
  ('ITCS8163','Data Warehousing','WOODW 155','Atif Mohammad','F 06:30 pm-09:15 pm'),
  ('ITCS8166','Computer Communications and Networks','WOODW 130','Dewan Ahmed','M 06:30 pm-09:15 pm'),
  ('ITCS8167','Advanced Networking Protocols','WOODW 140','Yu Wang','F 09:30 am-12:15 pm'),
  ('ITIS1212','Intro to Media Programming','KNNDY 236','Bruce Long','F 08:00 am-10:45 am'),
  ('ITIS1212L','Intro to Media Programming Lab','WOODW 140','Bruce Long','M 03:30 pm-06:15 pm'),
  ('ITIS1213','Media Programming','KNNDY 236','Bruce Long','F 02:00 pm-04:45 pm'),
  ('ITIS1213L','Media Programming Lab','WOODW 140','Bruce Long','W 12:30 pm-03:15 pm'),
  ('ITIS2110','IT Infrastructure I: Design and Practice','CHHS 380','Anthony Kombol','MW 05:00 pm-06:15 pm'),
  ('ITIS2110L','IT Infrastructure I: Design and Practice Lab','WOODW 302','Anthony Kombol','M 09:30 am-12:15 pm'),
  ('ITIS2211','Ethical Issues in Personal, Professional and Public Life: Technology','FRIDY 383','Eleanor L Ritterskamp','T 03:30 pm-06:15 pm'),
  ('ITIS2300','Web-Based Application Development','WOODW 140','Dale-Marie Wilson','F 02:00 pm-03:15 pm'),
  ('ITIS2300L','Web-Based Application Development Lab','WOODW 140','Dale-Marie Wilson','F 12:30 pm-01:45 pm'),
  ('ITIS3105','Server-Side Applications and Data Management','WOODW 140','Dale-Marie Wilson','TR 03:30 pm-04:45 pm'),
  ('ITIS3110','IT Infrastructure II: Design and Practice','WOODW 155','Anthony Kombol','F 09:30 am-12:15 pm'),
  ('ITIS3110L','IT Infrast II: Design/Prac Lab','WOODW 302','Anthony Kombol','W 02:00 pm-04:45 pm'),
  ('ITIS3130','Human-Computer Interaction','KNNDY 236','Alberto Gonzalez','MW 02:00 pm-03:15 pm'),
  ('ITIS3150','Rapid Prototyping and Interface Building','WOODW 140','Alberto Gonzalez','W 06:30 pm-09:15 pm'),
  ('ITIS3200','Introduction to Information Security and Privacy','WOODW 140','Bill Chu','TR 05:00 pm-06:15 pm'),
  ('ITIS3300','Software Requirements and Project Management','WOODW 125','Cynthia Leigh Burke','M 06:30 pm-09:15 pm'),
  ('ITIS3310','Software Architecture and Design','WOODW 130','Lance Scott Peterman','W 06:30 pm-09:15 pm'),
  ('ITIS3320','Introduction to Software Testing and Assurance','CHHS 159','Saad Dawoud Hamdan','MW 06:30 pm-07:45 pm'),
  ('ITIS3650','Senior Project I','TBA','Mary Lou Maher','TBA'),
  ('ITIS3651','Senior Project II','TBA','Bill Chu','TBA'),
  ('ITIS4011','Interaction Design Studio','WOODW 308','Alberto Gonzalez','F 08:00 am-10:45 am'),
  ('ITIS4166','Network-Based Application Development','WOODW 135','Zahid Anwar','TR 02:00 pm-03:15 pm'),
  ('ITIS4180','Mobile Application Development','KNNDY 236','Mohamed Shehab','M 06:30 pm-09:15 pm'),
  ('ITIS4221','Secure Programming and Penetration Testing','WOODW 140','Bill Chu','TR 02:00 pm-03:15 pm'),
  ('ITIS4250','Computer Forensics','WOODW 125','Victor Gibson Grose','T 06:30 pm-09:15 pm'),
  ('ITIS4420','Usable Security & Privacy','SMITH 306','Heather Lipford','W 03:30 pm-06:15 pm'),
  ('ITIS4490','Professional Internship','TBA','Bruce Long','TBA'),
  ('ITIS5166','Network-Based Application Development','TBA','Fadi Fuad Mohsen','TBA'),
  ('ITIS5180','Mobile Application Development','KNNDY 236','Mohamed Shehab','M 06:30 pm-09:15 pm'),
  ('ITIS5221','Secure Programming and Penetration Testing','WOODW 140','Bill Chu','TR 02:00 pm-03:15 pm'),
  ('ITIS5250','Computer Forensics','WOODW 125','Victor Gibson Grose','T 06:30 pm-09:15 pm'),
  ('ITIS6010','Topics in Software and Information Systems','WOODW 135','Yaorong Ge','TR 03:30 pm-04:45 pm'),
  ('ITIS6011','Interaction Design Studio','WOODW 308','Alberto Gonzalez','F 08:00 am-10:45 am'),
  ('ITIS6112','Software System Design and Implementation','WOODW 125','Dai Chun Cheng','F 06:30 pm-09:15 pm'),
  ('ITIS6120','Applied Databases','CITY 902','David Wilson','R 06:30 pm-09:15 pm'),
  ('ITIS6150','Software Assurance','SMITH 352','Meera Sridhar','MW 03:30 pm-04:45 pm'),
  ('ITIS6162','Knowledge Discovery in Databases','WOODW 125','Xi Niu','R 06:30 pm-09:15 pm'),
  ('ITIS6163','Data Warehousing','WOODW 155','Atif Mohammad ','F 06:30 pm-09:15 pm'),
  ('ITIS6177','System Integration','WOODW 155','Iosif Ivanovich Yeremuk','W 06:30 pm-09:15 pm'),
  ('ITIS6198','IT Internship Project','TBA','Heather Lipford','TBA'),
  ('ITIS6200','Principles of Information Security and Privacy','TBA','Weichao Wang','TBA'),
  ('ITIS6230','Information Infrastructure Protection','WOODW 155','Ehab Al-Shaer','R 06:30 pm-09:15 pm'),
  ('ITIS6320','Cloud Data Storage','WOODW 154','Yongge Wang','F 06:30 pm-09:15 pm'),
  ('ITIS6342','Information Technology Project Management','SMITH 325','Thomas J Kitrick','T 06:30 pm-09:15 pm'),
  ('ITIS6350','Rapid Prototyping Des Patterns','WOODW 140','Alberto Gonzalez','W 06:30 pm-09:15 pm'),
  ('ITIS6362','Information Technology Ethics, Policy, and Security','WOODW 155','Fredric B Williams','M 06:30 pm-09:15 pm'),
  ('ITIS6410','Personalization and Recommender Systems','KNNDY 234','David Wilson','W 06:30 pm-09:15 pm'),
  ('ITIS6420','Usable Security and Privacy','SMITH 306','Heather Lipford','W 03:30 pm-06:15 pm'),
  ('ITIS6500','Complex Adaptive Systems','WOODW 135','Mirsad Hadzikadic','R 06:30 pm-09:15 pm'),
  ('ITIS6880','Individual Study','TBA','Weichao Wang','TBA'),
  ('ITIS6991','Information Technology Thesis','TBA','Xi Niu','TBA'),
  ('ITIS8010','Topics in Software and Information Systems','WOODW 135','Yaorong Ge','TR 03:30 pm-04:45 pm'),
  ('ITIS8011','Interaction Design Studio','WOODW 308','Alberto Gonzalez','F 08:00 am-10:45 am'),
  ('ITIS8112','Software System Design and Implementation','WOODW 125','Dai Chun Cheng','F 06:30 pm-09:15 pm'),
  ('ITIS8120','Applied Databases','CITY 902','David Wilson','R 06:30 pm-09:15 pm'),
  ('ITIS8150','Software Assurance','SMITH 352','Meera Sridhar','MW 03:30 pm-04:42 pm'),
  ('ITIS8200','Principles of Information Security and Privacy','TBA','Weichao Wang','TBA'),
  ('ITIS8230','Information Infrastructure Protection','WOODW 155','Zahid Anwar','R 06:30 pm-09:15 pm'),
  ('ITIS8320','Cloud Data Storage','WOODW 154','Yongge Wang','F 06:30 pm-09:15 pm'),
  ('ITIS8350','Rapid Prototyping Des Patterns','WOODW 140','Alberto Gonzalez','W 06:30 pm-09:15 pm'),
  ('ITIS8410','Personalization and Recommender Systems','KNNDY 234','David Wilson','W 06:30 pm-09:15 pm'),
  ('ITIS8420','Usable Security and Privacy','SMITH 306','Heather Lipford','W 03:30 pm-06:15 pm'),
  ('ITIS8500','Complex Adaptive Systems','WOODW 135','Mirsad Hadzikadic','R 06:30 pm-09:15 pm'),
  ('BINF1101','Introduction to Bioinformatics and Genomics','BIOIN 217','Lawrence Mays','MW 02:00 pm-03:15 pm'),
  ('BINF1101L','Introduction to Bioinformatics and Genomics Lab','BIOIN 104','Lawrence Mays','M 03:30 pm-06:00 pm'),
  ('BINF3121','Statistics for Bioinformatics','BIOIN 104','Xiuxia Du','WF 11:00 am-12:15 pm'),
  ('BINF3201','Genomics Methods','BIOIN 217','Jessica Schlueter','MW 09:30 am-10:45 am'),
  ('BINF3201L','Genomics Methods Lab','BIOIN 246','Jessica Schlueter','W 12:30 pm-03:15 pm'),
  ('BINF3900','Undergraduate Research','TBA','Jun-tao Guo','TBA'),
  ('BINF4191','Life Sciences and the Law','BIOIN 301','Carl P B Mahler II','TR 12:30 pm-01:45 pm'),
  ('BINF4600','Bioinformatics and Genomics Seminar','BIOIN 301','Daniel Janies','F 02:45 pm-03:45 pm'),
  ('BINF5191','Biotechnology and the Law','BIOIN 301','Carl P B Mahler II','TR 12:30 pm-01:45 pm'),
  ('BINF6101','Energy and Interaction in Biological Modeling','BIOIN 301','Jun-tao Guo','TR 11:00 am-12:15 pm'),
  ('BINF6112','Bioinformatics Programming II','BIOIN 104','Mindy Shi','TR 09:30 am-10:45 am'),
  ('BINF6112L','Bioinformatics Programming II Lab','BIOIN 104','Mindy Shi','T 02:00 pm-03:15 pm'),
  ('BINF6153','Career Development','BIOIN 105','Ann Loraine','R 02:45 pm-05:15 pm'),
  ('BINF6203','Genomics','BIOIN 105','Cynthia Gibas','MW 11:00 am-12:15 pm'),
  ('BINF6203L','Genomics Lab','BIOIN 104','Cynthia Gibas','M 12:30 pm-02:15 pm'),
  ('BINF6204','Mathematical Systems Biology','BIOIN 301','Zhengchang Su','MW 02:30 pm-03:45 pm'),
  ('BINF6211','Design and Implementation of Bioinformatics Databases','BIOIN 105','David Andrew Carr','TR 08:00 am-09:15 am'),
  ('BINF6310','Advanced Statistics for Genomics','BIOIN 104','Anthony Fodor','MW 09:30 am-10:45 am'),
  ('BINF6310L','Advanced Statistics for Genomics Lab','BIOIN 104','Anthony Fodor','W 12:30 pm-01:45 pm'),
  ('BINF6400','Internship Project','TBA','Cynthia Gibas','TBA'),
  ('BINF6600','Seminar','BIOIN 105','Lawrence Mays','F 01:30 pm-02:30 pm'),
  ('BINF6880','Independent Study','TBA','Cynthia Gibas','TBA'),
  ('BINF8101','Energy and Interaction in Biological Modeling','BIOIN 301','Jun-tao Guo','TR 11:00 am-12:15 pm'),
  ('BINF8112','Bioinformatics Programming II','BIOIN 104','Mindy Shi','TR 09:30 am-10:45 am'),
  ('BINF8112L','Bioinformatics Programming II Lab','BIOIN 104','Mindy Shi','T 02:00 pm-03:15 pm'),
  ('BINF8203','Genomics','BIOIN 105','Cynthia Gibas','MW 11:00 am-12:15 pm'),
  ('BINF8203L','Genomics Lab','BIOIN 104','Cynthia Gibas','M 12:30 pm-02:15 pm'),
  ('BINF8204','Mathematical Systems Biology','BIOIN 301','Zhengchang Su','MW 02:30 pm-03:45 pm'),
  ('BINF8211','Design and Implementation of Bioinformatics Databases','BIOIN 105','David Andrew Carr','TR 08:00 am-09:15 am'),
  ('BINF8310','Advanced Statistics for Genomics','BIOIN 104','Anthony Fodor','MW 09:30 am-10:45 am'),
  ('BINF8310L','Advanced Statistics for Genomics Lab','BIOIN 104','Anthony Fodor','W 12:30 pm-01:45 pm'),
  ('BINF8600','Seminar','BIOIN 105','Lawrence Mays','F 01:30 pm-02:30 pm'),
  ('BINF8911','Research Rotation I','TBA','Cynthia Gibas','TBA'),
  ('BINF8912','Research Rotation II','TBA','Cynthia Gibas','TBA'),
  ('BINF8991','Doctoral Dissertation Research','TBA','Cynthia Gibas','TBA');

/* Insert data into table Faculties */
INSERT INTO Faculties 
  (SSN, Name, Title, Email, Phone_Num, Office_Num, Research_Areas)
VALUES 
  ('100000001','Dewan Ahmed','Teaching Assistant Professor','dahmed@uncc.edu','704-687-7888','Woodward 423B','Computer Networks'),
  ('100000002','Srinivas Akella','Professor','sakella@uncc.edu','704-687-8573','Woodward Hall 205-B','Robotics'),
  ('100000003','Ann Aksut','Adjunct Faculty','aaksut@uncc.edu','704-687-8581','Woodward Hall 232','Computer Science'),
  ('100000004','Michael Allen','Professor Emeritus','cma@uncc.edu','910-439-4807','NA','Computer Science'),
  ('100000005','Diane Cassidy','Senior Lecturer','dcassidy@uncc.edu','704-687-8544','Woodward Hall 423-D','Computer Science'),
  ('100000006','Keh-Hsun Chen','Professor & Associate Chair','chen@uncc.edu','704-687-8545','Woodward Hall 403-C','Algorithm Analysis and Design'),
  ('100000007','Bojan Cukic','Professor & Chair','bcukic@uncc.edu','704-687-6155','Woodward Hall 430-A','Computer Science'),
  ('100000008','Agnieszka Dardzinska','Adjunct Faculty','adardzin@uncc.edu','704-687-8564','Woodward Hall 402','Computer Science'),
  ('100000009','Yi Deng','Dean & Professor','Yi.Deng@uncc.edu','704-687-8422','Woodward Hall 443-E','Computer Science'),
  ('100000010','Mohsen Dorodchi','Teaching Associate Professor','mdorodch@uncc.edu','NA','Woodward Hall 410-E','Computer Science'),
  ('100000011','Wenwen Dou','Assistant Professor','wdou1@uncc.edu','704-687-8577','Woodward 435C','Visual Analytics'),
  ('100000012','Christopher Elmore','Adjunct Faculty','celmore1@uncc.edu','704-687-8581','Woodward Hall-232','Computer Science'),
  ('100000013','Jianping Fan','Professor','jfan@uncc.edu','704-687-8556','Woodward Hall 205-D','DataBase'),
  ('100000014','James Frazier','Assistant Chair & Director of Freshman Programs','jfrazie2@uncc.edu','704-687-8557','Woodward Hall 410-B','Computer Science'),
  ('100000015','Yong Ge','Assistant Professor','yge1@uncc.edu','704-687-8575','Woodward 210C','Computer System Engineering'),
  ('100000016','John Gero','Research Professor','jgero1@uncc.edu','703-415-1978','Woodward Hall 410-C','Cognitive Science'),
  ('100000017','Richard Ilson','Lecturer','rilson@uncc.edu','704-687-8561','Woodward Hall 423-A','Computer Science'),
  ('100000018','Daniel Jugan','Lecturer','djugan@uncc.edu','704-687-8558','Woodward Hall 210-B','Computer Science'),
  ('100000019','Jason Karp','Adjunct Faculty','jkarp3@uncc.edu','704-687-8581','Woodward Hall 232','Computer Science'),
  ('100000020','Lorrie Lehmann','Lecturer','ljlehman@uncc.edu','704-687-8439','Woodward Hall 423-C','Computer Science'),
  ('100000021','Richard Lejk','Associate Professor','lejk@uncc.edu','704-687-8567','Woodward Hall 403-B','SE Pervasive Computing Formal Methods'),
  ('100000022','Aidong Lu','Associate Professor','alu1@uncc.edu','704-687-8570','Woodward Hall 435-F','Computer Science'),
  ('100000023','Emanuela Marasco','Adjunct Faculty','emarasco@uncc.edu','NA','Woodward Hall 212','Computer Science'),
  ('100000024','Susan Medlin','Adjunct Faculty','smedlin1@uncc.edu','704-687-0147','Woodward Hall 409','Computer Science'),
  ('100000025','Taghi Mostafavi','Associate Professor','taghi@uncc.edu','704-687-8572','Woodward Hall 403-D','Computer Science'),
  ('100000026','Kevin Murphy','Adjunct Faculty','kmurph59@uncc.edu','NA','Woodward Hall 230-A','Computer Science'),
  ('100000027','Jamie Payton','Associate Professor','payton@uncc.edu','704-687-8188','Woodward Hall 205-C','Ad Hoc and Sensor Networks'),
  ('100000028','Harini Ramaprasad','Teaching Associate Professor','hramapra@uncc.edu','704-687-1737','Woodward Hall 410D','Computer Modeling'),
  ('100000029','Zbigniew Ras','Professor & KDD Lab. Director','ras@uncc.edu','704-687-8574','Woodward Hall 430-C','Computer Modeling'),
  ('100000030','Gyorgy Revesz','Professor Emeritus','revesz@uncc.edu','NA','NA','Computer Modeling'),
  ('100000031','William Ribarsky','Research Professor','ribarsky@uncc.edu','704-687-8559','Woodward Hall 410-H','Visual Analytics'),
  ('100000032','Erik Saule','Assistant Professor','esaule@uncc.edu','704-687-8580','Woodward 210-D','Algorithms and Complexity'),
  ('100000033','Sara Scott','Lecturer','shscott@uncc.edu','704-687-8576','Woodward Hall 423-E','Algorithms and Complexity'),
  ('100000034','Min Shin','Associate Professor','mcshin@uncc.edu','704-687-8578','Woodward Hall 210-G','Computer Science'),
  ('100000035','Kalpathi Subramanian','Associate Professor','krs@uncc.edu','704-687-8579','Woodward Hall 435-E','Computer Science'),
  ('100000036','Ashit Talukder','Professor & BOA Endowed Chair in IT & Director of the Charlotte Visualization Center','atalukde@uncc.edu','NA','Woodward Hall 403A','Computer Science'),
  ('100000037','Jennifer Toth','Adjunct Faculty','JLTOTH1@uncc.edu','NA','Woodward Hall 230-B','Collaborative Systems'),
  ('100000038','Angelina Tzacheva','Teaching Associate Professor','aatzache@uncc.edu','704-687-7989','Woodward Hall 435-A','Computer Science'),
  ('100000039','Yu Wang','Professor','yu.wang@uncc.edu','704-687-8443','Woodward Hall 430-D','Algorithm Analysis and Design'),
  ('100000040','Zachary Wartell','Associate Professor','zwartell@uncc.edu','704-687-8442','Woodward Hall 435-B','3D Visualization and 3D Graphics'),
  ('100000041','Barry Wilkinson','Professor','abw@uncc.edu','704-687-8381','Woodward Hall 435-G','Distributed Knowledge Systems'),
  ('100000042','Jing Xiao','Professor','xiao@uncc.edu','704-687-8587','Woodward Hall 205-A','Computer Science'),
  ('100000043','Jing Yang','Associate Professor','jyang13@uncc.edu','704-687-8375','Woodward Hall 403-E','Visual Analytics'),
  ('100000044','Wlodek Zadrozny','Associate Professor','wzadrozn@uncc.edu','704-687-8377','Woodward Hall 435D','Computer Science'),
  ('100000045','Shaoting Zhang','Assistant Professor','szhang16@uncc.edu','NA','Woodward 210F','Computer Vision'),
  ('100000046','Ayman Hajja','Adjunct Faculty','ahajja@uncc.edu','704-687-8564','Woodward Hall 402','Computer Science'),
  ('100000047','Richard Souvenir','Associate Professor','souvenir@uncc.edu','704-687-8554','Woodward Hall 210-E','AI'),
  ('200000001','Ehab Al-Shaer','Professor & Director of CyberDNA','ealshaer@uncc.edu','704-687-8663','Woodward Hall 343-C','Software and Information Systems'),
  ('200000002','Bill Chu','Professor','billchu@uncc.edu','704-687-8661','Woodward Hall 310-F','Enterprise Integration'),
  ('200000003','Yaorong Ge','Associate Professor','yge@uncc.edu','704-687-1951','Woodward Hall 333-E','Software and Information Systems'),
  ('200000004','Mirsad Hadzikadic','Professor & Director of Complex Systems Institute','mirsad@uncc.edu','704-687-8643','Woodward Hall 343-A','Software and Information Systems'),
  ('200000005','Anthony Kombol','Lecturer','tkombol@uncc.edu','704-687-8194','Woodward Hall 333-G','Software and Information Systems'),
  ('200000006','Celine Latulipe','Associate Professor','clatulip@uncc.edu','704-687-8195','Woodward Hall 305-D','Software and Information Systems'),
  ('200000007','Heather Lipford','Associate Professor','richter@uncc.edu','704-687-8376','Woodward Hall 305-E','Human-Computer Interaction'),
  ('200000008','Bruce Long','Assistant Chair','nblong@uncc.edu','704-687-8441','Woodward Hall 310-E','Software and Information Systems'),
  ('200000009','Mary Lou Maher','Chair','m.maher@uncc.edu','704-687-1940','Woodward Hall 310-A','Design and Computing'),
  ('200000010','Xi Niu','Assistant Professor','xniu2@uncc.edu','704-687-8772','Woodward Hall 310 G','Data Analytics and Search Behavior'),
  ('200000011','Manuel A. Pérez Quinones','Professor & Associate Dean','Perez.Quinones@uncc.edu','704-687-8553','Woodward Hall 443F','Human-Computer Interaction'),
  ('200000012','Mohamed Shehab','Associate Professor','mshehab@uncc.edu','704-687-7476','Woodward Hall 333-F','Network and Information Security'),
  ('200000013','Meera Sridhar','Tenure Track Assistant Professor','msridhar@uncc.edu','704-687-1887','Woodward Hall 305-B','Software and Information Systems'),
  ('200000014','William J. Tolone','Professor & Associate Dean','wjtolone@uncc.edu','704-687-8664','Woodward Hall 341-A','Software and Information Systems'),
  ('200000015','Weichao Wang','Associate Professor','wwang22@uncc.edu','704-687-7987','Woodward Hall 333-C','Information Security'),
  ('200000016','Yongee Wang','Associate Professor','yonwang@uncc.edu','704-687-8665','Woodward Hall 330-E','Information Security'),
  ('200000017','Dale-Marie Wilson','Assistant Professor','dwilso1@uncc.edu','704-687-7988','Woodward Hall 323-A','Human Centered Computing'),
  ('200000018','David Wilson','Professor','davils@uncc.edu','704-687-8585','Woodward Hall 330-C','Intelligent Software Systems'),  
  ('200000019','Lixia Yao','Assistant Professor','lyao1@uncc.edu','704-687-8769','Woodward 333D','Health Informatics'),
  ('300000001','Cory Brouwer','Associate Professor','Cory.Brouwer@uncc.edu','704-687-8357','NCRC Core Lab 3340','Bioinformatics'),
  ('300000002','Xiuxia Du','Associate Professor','xiuxia.du@uncc.edu','704-687-7307','Bioinformatics 265','Bioinformatics'),
  ('300000003','Anthony Fodor','Associate Professor','afodor@uncc.edu','704-687-8214','Bioinformatics 361','Bioinformatics'),
  ('300000004','Cynthia Gibas','Associate Professor','cgibas@uncc.edu','704-687-8378','Bioinformatics 355','Microarray Data Analysis'),
  ('300000005','Jun-tao Guo','Associate Professor','jguo4@uncc.edu','704-687-7492','Bioinformatics 359','Structural Bioinformatics'),
  ('300000006','Daniel Janies','Carol Grotnes Belk Distinguished Professor','djanies@uncc.edu','704-687-1742','Bioinformatics 315','Bioinformatics'),
  ('300000007','Dennis Livesay','Professor','drlivesa@uncc.edu','704-687-7995','Bioinformatics 363 ','Physiochemical Properties of Proteins'),
  ('300000008','Ann Loraine','Associate Professor','aloraine@uncc.edu','704-687-0144','NCRC Plants for Human Health Institute 4302','Bioinformatics'),
  ('300000009','Weijun Luo','Research Assistant Professor & Biostatistician','Weijun.Luo@uncc.edu','704-687-2414','NCRC Core Lab 3341','Genomic Data Analysis'),
  ('300000010','Lawrence Mays','Professor & Chair','lemays@uncc.edu','704-687-8555','Bioinformatics 311','Bioinformatics'),
  ('300000011','Jessica Schlueter','Assistant Professor','jschluet@uncc.edu','704-687-8968','Bioinformatics 261','Processes and Consequences of Genome Duplication'),
  ('300000012','Susan Sell','Professor & Interim Chair','ssell@uncc.edu','704-687-5682','CHHS 431','Bioinformatics'),
  ('300000013','Wei Sha','Research Assistant Professor','wsha@uncc.edu','704-687-2417','NCRC Core Lab 3331','Omics Data Analysis'),
  ('300000014','Mindy Shi','Assistant Professor','x.shi@uncc.edu','704-687-8437','Bioinformatics 271','Computational Systems Biology'),
  ('300000015','Zhengchang Su','Assistant Professor','zcsu@uncc.edu','704-687-7996','Bioinformatics 351','Bioinformatics'),
  ('300000016','Way Sung','Assistant Professor','wsung@uncc.edu','704-687-5155','Bioinformatics 263','Evolutionary Process'),  
  ('300000017','Jennifer Weller','Associate Professor','JenniferWeller@uncc.edu','704-687-7678','Bioinformatics 353','Bioinformatics');

/* Insert data into table Departments */
INSERT INTO Departments 
  (DID, Name, Faculties_Num, Main_Office)
VALUES 
  ('ITCS','Department of Computer Science','47','Woodward Hall 430-A'),
  ('ITIS','Department of Software and Information Systems','19','Woodward Hall 310-A'),
  ('BINF','Department of Bioinformatics and Genomics','17','Bioinformatics 311');

/* Insert data into table Enroll */
/* BINFUndergraduate */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900001 AND 800900026) AS BINFUndergraduateStudents
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'BINF1%' OR C.CID LIKE 'BINF2%' OR C.CID LIKE 'BINF3%' OR C.CID LIKE 'BINF4%') AS BINFUndergraduateCourses;

/* ITCSUndergraduate */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900027 AND 800900033) AS ITCSUndergraduateStudents1
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'ITCS1%') AS ITCSUndergraduateCourses1;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900034 AND 800900040) AS ITCSUndergraduateStudents2
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'ITCS2%') AS ITCSUndergraduateCourses2;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900041 AND 800900046) AS ITCSUndergraduateStudents3
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'ITCS3%') AS ITCSUndergraduateCourses3;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900046 AND 800900052) AS ITCSUndergraduateStudents4
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'ITCS4%') AS ITCSUndergraduateCourses4;

/* ITISUndergraduate */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900053 AND 800900069) AS ITISUndergraduateStudents1
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'ITIS1%') AS ITISUndergraduateCourses1;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900060 AND 800900066) AS ITISUndergraduateStudents2
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'ITIS2%') AS ITISUndergraduateCourses2;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900067 AND 800900072) AS ITISUndergraduateStudents3
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'ITIS3%') AS ITISUndergraduateCourses3;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900073 AND 800900078) AS ITISUndergraduateStudents4
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'ITIS4%') AS ITISUndergraduateCourses4;

/* BINFGraduate */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900079 AND 800900087) AS BINFGraduateStudents1
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'BINF5191' AND 'BINF6153') AS BINFGraduateCourses1;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900088 AND 800900096) AS BINFGraduateStudents2
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'BINF6203' AND 'BINF6211') AS BINFGraduateCourses2;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900097 AND 800900104) AS BINFGraduateStudents3
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'BINF6310' AND 'BINF6880') AS BINFGraduateCourses3;

/* ITCSGraduate */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900105 AND 800900111) AS ITCSGraduateStudents1
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITCS5010' AND 'ITCS5161') AS ITCSGraduateCourses1;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900112 AND 800900118) AS ITCSGraduateStudents2
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITCS5180' AND 'ITCS6112') AS ITCSGraduateCourses2;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900119 AND 800900124) AS ITCSGraduateStudents3
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITCS6114' AND 'ITCS6162') AS ITCSGraduateCourses3;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900125 AND 800900130) AS ITCSGraduateStudents4
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITCS6163' AND 'ITCS6991') AS ITCSGraduateCourses4;

/* ITISGraduate */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900131 AND 800900137) AS ITISGraduateStudents1
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITIS5166' AND 'ITIS6011') AS ITISGraduateCourses1;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900138 AND 800900144) AS ITISGraduateStudents2
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITIS6112' AND 'ITIS6177') AS ITISGraduateCourses2;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900145 AND 800900150) AS ITISGraduateStudents3
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITIS6198' AND 'ITIS6350') AS ITISGraduateCourses3;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900151 AND 800900156) AS ITISGraduateStudents4
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITIS6362' AND 'ITIS6991') AS ITISGraduateCourses4;

/* BINFPhD */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900157 AND 800900162) AS BINFPhDStudents1
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'BINF81%') AS BINFPhDCourses1;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900163 AND 800900168) AS BINFPhDStudents2
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'BINF82%') AS BINFPhDCourses2;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900168 AND 800900174) AS BINFPhDStudents3
JOIN
(SELECT * FROM Courses C WHERE C.CID LIKE 'BINF83%') AS BINFPhDCourses3;

/* ITCSPhD */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900175 AND 800900180) AS ITCSPhDStudents1
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITCS8050' AND 'ITCS8124') AS ITCSPhDCourses1;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900181 AND 800900186) AS ITCSPhDStudents2
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITCS8155' AND 'ITCS8160') AS ITCSPhDCourses2;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900187 AND 800900191) AS ITCSPhDStudents3
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITCS8162' AND 'ITCS8167') AS ITCSPhDCourses3;

/* ITISPhD */
INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900192 AND 800900197) AS ITISPhDStudents1
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITIS8010' AND 'ITIS8120') AS ITISPhDCourses1;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900198 AND 800900203) AS ITISPhDStudents2
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITIS8150' AND 'ITIS8320') AS ITISPhDCourses2;

INSERT INTO Enroll (SID, CID)
SELECT SID, CID FROM 
(SELECT * FROM Students S WHERE S.SID BETWEEN 800900204 AND 800900208) AS ITISPhDStudents3
JOIN
(SELECT * FROM Courses C WHERE C.CID BETWEEN 'ITIS8350' AND 'ITIS8500') AS ITISPhDCourses3;

/* Update Grade in Enroll */
UPDATE Enroll SET Grade = 'A' 
WHERE SID = '800900002' OR SID = '800900004' OR SID = '800900006' OR SID = '800900008' OR
	  SID = '800900012' OR SID = '800900014' OR SID = '800900016' OR SID = '800900018' OR
      SID = '800900022' OR SID = '800900024' OR SID = '800900026' OR SID = '800900028' OR
      SID = '800900032' OR SID = '800900034' OR SID = '800900036' OR SID = '800900038' OR
      SID = '800900042' OR SID = '800900044' OR SID = '800900046' OR SID = '800900048' OR
      SID = '800900052' OR SID = '800900054' OR SID = '800900056' OR SID = '800900058' OR
      SID = '800900062' OR SID = '800900064' OR SID = '800900066' OR SID = '800900068' OR
      SID = '800900072' OR SID = '800900074' OR SID = '800900076' OR SID = '800900078' OR
      SID = '800900082' OR SID = '800900084' OR SID = '800900086' OR SID = '800900088' OR
      SID = '800900092' OR SID = '800900094' OR SID = '800900096' OR SID = '800900098' OR
      SID = '800900102' OR SID = '800900104' OR SID = '800900106' OR SID = '800900108' OR
      SID = '800900202' OR SID = '800900204' OR SID = '800900206' OR SID = '800900208';
    
UPDATE Enroll SET Grade = 'B'
WHERE SID = '800900001' OR SID = '800900003' OR SID = '800900005' OR SID = '800900007' OR SID = '800900009' OR
      SID = '800900011' OR SID = '800900013' OR SID = '800900015' OR SID = '800900017' OR SID = '800900019' OR
      SID = '800900021' OR SID = '800900023' OR SID = '800900025' OR SID = '800900027' OR SID = '800900029' OR
      SID = '800900031' OR SID = '800900033' OR SID = '800900035' OR SID = '800900037' OR SID = '800900039' OR
      SID = '800900041' OR SID = '800900043' OR SID = '800900045' OR SID = '800900047' OR SID = '800900049' OR
      SID = '800900051' OR SID = '800900053' OR SID = '800900055' OR SID = '800900057' OR SID = '800900059' OR
      SID = '800900061' OR SID = '800900063' OR SID = '800900065' OR SID = '800900067' OR SID = '800900069' OR
      SID = '800900071' OR SID = '800900073' OR SID = '800900075' OR SID = '800900077' OR SID = '800900079' OR
      SID = '800900081' OR SID = '800900083' OR SID = '800900085' OR SID = '800900087' OR SID = '800900089' OR
      SID = '800900091' OR SID = '800900093' OR SID = '800900095' OR SID = '800900097' OR SID = '800900099' OR
      SID = '800900101' OR SID = '800900103' OR SID = '800900105' OR SID = '800900107' OR SID = '800900109' OR
      SID = '800900201' OR SID = '800900203' OR SID = '800900205' OR SID = '800900207';
    
UPDATE Enroll SET Grade = 'C'
WHERE SID = '800900010' OR
      SID = '800900020' OR
      SID = '800900030' OR
      SID = '800900040' OR
      SID = '800900050' OR
      SID = '800900060' OR
      SID = '800900070' OR
      SID = '800900080' OR
      SID = '800900090' OR
      SID = '800900100' OR
      SID = '800900200';

/* Insert data into table Teach */
INSERT INTO Teach 
  (SSN, CID, Time)
SELECT 
  F.SSN, C.CID, C.Class_Time 
FROM 
  Courses C JOIN Faculties F
WHERE 
  C.Professor_Name = F.Name;

/* Insert data into table Work_In */
/* ITCS Dept */
INSERT INTO Work_In 
  (SSN, DID)
SELECT 
    SSN, DID
FROM
    Faculties JOIN Departments
WHERE
    SSN LIKE '1%' AND DID = 'ITCS';

/* ITIS Dept */
INSERT INTO Work_In 
  (SSN, DID)
SELECT 
    SSN, DID
FROM
    Faculties JOIN Departments
WHERE
    SSN LIKE '2%' AND DID = 'ITIS';

/* BINF Dept */
INSERT INTO Work_In 
  (SSN, DID)
SELECT 
    SSN, DID
FROM
    Faculties JOIN Departments
WHERE
    SSN LIKE '3%' AND DID = 'BINF';

/* Update Since in Work_In */
UPDATE Work_In SET Since = '2001'
WHERE SSN = '100000001' OR SSN = '100000011' OR SSN = '100000021' OR SSN = '100000031' OR
	  SSN = '100000041' OR SSN = '200000001' OR SSN = '200000011' OR SSN = '300000001' OR
      SSN = '300000011';

UPDATE Work_In SET Since = '2002'
WHERE SSN = '100000002' OR SSN = '100000012' OR SSN = '100000022' OR SSN = '100000032' OR
	  SSN = '100000042' OR SSN = '200000002' OR SSN = '200000012' OR SSN = '300000002' OR
      SSN = '300000012';
      
UPDATE Work_In SET Since = '2003'
WHERE SSN = '100000003' OR SSN = '100000013' OR SSN = '100000023' OR SSN = '100000033' OR
	  SSN = '100000043' OR SSN = '200000003' OR SSN = '200000013' OR SSN = '300000003' OR
      SSN = '300000013';
      
UPDATE Work_In SET Since = '2004'
WHERE SSN = '100000004' OR SSN = '100000014' OR SSN = '100000024' OR SSN = '100000034' OR
	  SSN = '100000044' OR SSN = '200000004' OR SSN = '200000014' OR SSN = '300000004' OR
      SSN = '300000014';
      
UPDATE Work_In SET Since = '2005'
WHERE SSN = '100000005' OR SSN = '100000015' OR SSN = '100000025' OR SSN = '100000035' OR
	  SSN = '100000045' OR SSN = '200000005' OR SSN = '200000015' OR SSN = '300000005' OR
      SSN = '300000015';

UPDATE Work_In SET Since = '2006'
WHERE SSN = '100000006' OR SSN = '100000016' OR SSN = '100000026' OR SSN = '100000036' OR
	  SSN = '100000046' OR SSN = '200000006' OR SSN = '200000016' OR SSN = '300000006' OR
      SSN = '300000016';

UPDATE Work_In SET Since = '2007'
WHERE SSN = '100000007' OR SSN = '100000017' OR SSN = '100000027' OR SSN = '100000037' OR
	  SSN = '100000047' OR SSN = '200000007' OR SSN = '200000017' OR SSN = '300000007' OR
      SSN = '300000017';

UPDATE Work_In SET Since = '2008'
WHERE SSN = '100000008' OR SSN = '100000018' OR SSN = '100000028' OR SSN = '100000038' OR
	  SSN = '200000008' OR SSN = '200000018' OR SSN = '300000008';

UPDATE Work_In SET Since = '2009'
WHERE SSN = '100000009' OR SSN = '100000019' OR SSN = '100000029' OR SSN = '100000039' OR
	  SSN = '200000009' OR SSN = '200000019' OR SSN = '300000009';

UPDATE Work_In SET Since = '2010'
WHERE SSN = '100000010' OR SSN = '100000020' OR SSN = '100000030' OR SSN = '100000040' OR
      SSN = '200000010' OR SSN = '300000010'; 
  
  