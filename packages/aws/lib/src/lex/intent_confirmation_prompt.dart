// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_confirmation_prompt_message.dart';

class IntentConfirmationPrompt {
  /// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  final int maxAttempts;
  final List<IntentConfirmationPromptMessage> messages;
  final String? responseCard;

  /// Creates a new [IntentConfirmationPrompt].
  /// [maxAttempts] The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  /// [messages] Required.
  /// [responseCard] Optional.
  IntentConfirmationPrompt({
    required this.maxAttempts,
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxAttempts'] = maxAttempts;
    map['messages'] = pulumi.Input.encodeList<IntentConfirmationPromptMessage,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    final responseCardValue = responseCard;
    if (responseCardValue != null) {
      map['responseCard'] = responseCardValue;
    }
    return map;
  }

  factory IntentConfirmationPrompt.fromMap(Map<String, dynamic> map) {
    return IntentConfirmationPrompt(
      maxAttempts: map['maxAttempts'] as int,
      messages: pulumi.Input.decodeList<IntentConfirmationPromptMessage>(
          map['messages'],
          (value) => IntentConfirmationPromptMessage.fromMap(
              (value as Map).cast<String, dynamic>())),
      responseCard:
          map['responseCard'] == null ? null : map['responseCard'] as String,
    );
  }
}
