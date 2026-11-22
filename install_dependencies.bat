
@echo off
title Project Jarvis - Dependency Installer

echo ==========================================
echo       PROJECT JARVIS INSTALLER
echo       Python 3.14
echo ==========================================
echo.

py -3.14 --version
if errorlevel 1 (
    echo ERROR: Python 3.14 is niet gevonden.
    pause
    exit /b 1
)

echo.
echo Upgrading pip...
py -3.14 -m pip install --upgrade pip

echo.
echo Installing requirements...
py -3.14 -m pip install -r requirements.txt

echo.
echo ==========================================
echo Installation process completed.
echo Check the messages above for errors.
echo ==========================================
pause
