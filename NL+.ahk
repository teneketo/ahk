#Persistent
SetTimer, CheckIdle, 30000 ; Check every minute

CheckIdle:
    FormatTime, CurrentHour,, H
    if (CurrentHour >= 8 and CurrentHour <= 18) ; Between 8:00 and 18:00
    {
        IdleTime := A_TimeIdlePhysical // 30000 ; Get idle time in minutes
        if (IdleTime >= 4.5) ; If idle for 4.5 minutes or more
        {
            Send, {NumLock} ; Press NumLock
        }
    }
return