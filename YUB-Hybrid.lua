

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
function Slot1()
    plr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
    task.wait(0.4)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(0.4)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    task.wait(0.4)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({LowLvlSlot})
    task.wait(0.3)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
end

function Slot2()
      plr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
    task.wait(0.4)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(0.4)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    task.wait(0.4)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({Hybrid})
    task.wait(0.3)
    plr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Hair Stylist"])
    task.wait(0.3)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})    
    task.wait(0.3)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(0.6)
   plr.Backpack.HairScript.RemoteEvent:FireServer("woah")

end

mouse.KeyDown:connect(function(key)
    if key == "j" then    --go back
        Slot1()
    end
    if key == "k" then   -- hybrid
        Slot2()
    end
end)