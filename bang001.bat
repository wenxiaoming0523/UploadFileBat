@echo off
 
:start


%localPath 设置需要上传的文件目录%
set localPath=C:\Users\admin\AppData\Roaming\Xiaomi\batch_unlock\Log\batch_unlock.log


%设置ftp IP ， username ，password%
set ftpip=xxx.xxx.xxx.xxx
set username=xxx
set password=xxx


%设置ftpPath  上传到哪个ftp的哪个目录%
set ftpPath=D:\bangding\d1
Echo open %ftpip% >ftp.up
Echo %username%>>ftp.up
Echo %password%>>ftp.up
Echo Cd %ftpPath% >>ftp.up
Echo binary>>ftp.up
Echo put %localPath%>>ftp.up
Echo bye>>ftp.up
FTP -s:ftp.up
del ftp.up /q

: Pause

%2S后继续执行%
choice /t 2 /d y /n >nul
 
goto start

%一直循环下去%