local Players = game:GetService("Players")
local p = Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local orig = c.PrimaryPart.Position

for i = 1, 6 do
    local m = workspace:FindFirstChild("FREEPEABERT"..i)
    if m then
        local body = m:FindFirstChild("Body")
        if body then
            local part = body:FindFirstChild("Part")
            if part and c.PrimaryPart then
                c:MoveTo(part.Position + Vector3.new(0,3,0))
                task.wait(0.2)
                for _, v in ipairs(m:GetDescendants()) do
                    if v:IsA("ProximityPrompt") then
                        v:InputHoldBegin()
                        task.wait(1.1)
                        v:InputHoldEnd()
                    end
                end
                task.wait(2)
            end
        end
    end
end

c:MoveTo(orig)
