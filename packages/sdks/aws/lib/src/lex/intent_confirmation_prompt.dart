// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_confirmation_prompt_message.dart';

class IntentConfirmationPrompt {
  /// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  final pulumi.Input<int> maxAttempts;
  final pulumi.Input<List<IntentConfirmationPromptMessage>> messages;
  final pulumi.Input<String>? responseCard;

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
    return <String, dynamic>{
      'maxAttempts': maxAttempts,
      'messages': pulumi.Input.mapInputValue<List<IntentConfirmationPromptMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<IntentConfirmationPromptMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseCard': ?responseCard,
    };
  }

  factory IntentConfirmationPrompt.fromMap(Map<String, dynamic> map) {
    return IntentConfirmationPrompt(
      maxAttempts: (map['maxAttempts'] as int).input(),
      messages: (pulumi.Input.decodeList<IntentConfirmationPromptMessage>(map['messages']!, (value) => IntentConfirmationPromptMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseCard: map['responseCard'] == null ? null : ((map['responseCard'] as String).input()).input(),
    );
  }
}

