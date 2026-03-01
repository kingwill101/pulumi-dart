// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_slot_value_elicitation_prompt_message.dart';

class IntentSlotValueElicitationPrompt {
  /// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  final int maxAttempts;
  final List<IntentSlotValueElicitationPromptMessage> messages;
  final String? responseCard;

  /// Creates a new [IntentSlotValueElicitationPrompt].
  /// [maxAttempts] The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  /// [messages] Required.
  /// [responseCard] Optional.
  IntentSlotValueElicitationPrompt({
    required this.maxAttempts,
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAttempts': maxAttempts,
      'messages': pulumi.Input.encodeList<IntentSlotValueElicitationPromptMessage, Map<String, dynamic>>(messages, (value) => value.toMap()),
      'responseCard': ?responseCard,
    };
  }

  factory IntentSlotValueElicitationPrompt.fromMap(Map<String, dynamic> map) {
    return IntentSlotValueElicitationPrompt(
      maxAttempts: map['maxAttempts'] as int,
      messages: pulumi.Input.decodeList<IntentSlotValueElicitationPromptMessage>(map['messages'], (value) => IntentSlotValueElicitationPromptMessage.fromMap((value as Map).cast<String, dynamic>())),
      responseCard: map['responseCard'] == null ? null : map['responseCard'] as String,
    );
  }
}

