// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../intent_slot_value_elicitation_prompt_message/intent_slot_value_elicitation_prompt_message.dart';

class IntentSlotValueElicitationPrompt {
  /// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  final int maxAttempts;
  final List<IntentSlotValueElicitationPromptMessage> messages;
  final String? responseCard;

  IntentSlotValueElicitationPrompt({
    required this.maxAttempts,
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxAttempts'] = maxAttempts;
    map['messages'] = pulumi.Input.encodeList<
        IntentSlotValueElicitationPromptMessage,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    final responseCardValue = responseCard;
    if (responseCardValue != null) {
      map['responseCard'] = responseCardValue;
    }
    return map;
  }

  factory IntentSlotValueElicitationPrompt.fromMap(Map<String, dynamic> map) {
    return IntentSlotValueElicitationPrompt(
      maxAttempts: map['maxAttempts'] as int,
      messages:
          pulumi.Input.decodeList<IntentSlotValueElicitationPromptMessage>(
              map['messages'],
              (value) => IntentSlotValueElicitationPromptMessage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      responseCard:
          map['responseCard'] == null ? null : map['responseCard'] as String,
    );
  }
}
