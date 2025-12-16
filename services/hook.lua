local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()

    if self == TeleportService and method == "TeleportToPlaceInstance" then
        local args = {...}
        local PlaceID = args[1]
        local JobID = args[2]
        local Player = args[3]

        print("Teleport to ", JobID)
    end

    return OldNamecall(self, ...)
end)
