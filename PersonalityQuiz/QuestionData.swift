//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Siwa Sardjoemissier on 17/11/2017.
//  Copyright © 2017 Siwa Sardjoemissier. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "😸", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourelf with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjou doing things on you own terms."
        case .rabbit:
            return "You love verything that is soft. You are healthy and full of energy"
        case .turtle:
            return "You are wise beyond your years and you focus on the details. Slow and steady wins the race"
        }
    }
}
