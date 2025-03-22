

SMODS.Atlas{
    key = 'starz_mathjoker',
    path = 'Jokers.png',
    px = 71,
    py = 95,

}

SMODS.Joker{
    key = 'imaginary',
    loc_txt = {
        name = 'Imaginary',
        text = {
            '{X:mult,C:white} X#1# {} Mult',
            '{E:2}A force to be reckoned with...',
        }
    },
    atlas = 'starz_mathjoker',
    pos = {x = 1, y = 0},
    soul_pos = {x = 0, y = 0},
    rarity = 1,
    cost = -1,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            x_mult = 10
        }
    },
    loc_vars = function(self, info, card)
        return {
            vars = {
                card.ability.extra.x_mult
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            print card.ability.extra.x_mult
            return {
                card = card,
                x_mult = card.ability.extra.x_mult,
                color = G.C.XMULT
            }
        end
    end
}