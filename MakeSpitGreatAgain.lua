SLASH_SPIT1 = "/spit"
local locale = GetLocale() 


function getLocalizedSpit(name) 
 if locale == "deDE" then
  return {"spuckt auf den Boden.", "spuckt auf " .. name .. "."}
 elseif locale == "frFR" then 
  return {"crache sur le sol.", "crache sur " .. name .. "."}
 elseif locale == "itIT" then 
  return {"sputa a terra.", "sputa su " .. name .. "."}
 elseif locale == "ruRU" then 
  return {"плюет на землю.", "плюет на " .. name .. "."}
 elseif locale == "esES" then 
  return {"escupe al suelo", "escupe a " .. name .. "."}
 elseif locale == "esMX" then 
  return {"escupe al suelo", "escupe a " .. name .. "."}
 elseif locale == "ptBR" then 
  return {"cospe no chão.", "cospe em " .. name .. "."}
 else 
  -- any en case
  return {"spits on the ground.", "spits on " .. name .. "."}
 end
end


SlashCmdList["SPIT"] = function(msg)
 local spit
 local name = GetUnitName("target",false)
 if name == nil then
  spit = getLocalizedSpit("")[1]
 else 
  spit = getLocalizedSpit(name)[2]
 end
 SendChatMessage(spit, "EMOTE", nil, nil)
end