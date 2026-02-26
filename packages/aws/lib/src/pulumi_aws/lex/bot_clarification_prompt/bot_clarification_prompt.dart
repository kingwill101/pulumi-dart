// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bot_clarification_prompt_message/bot_clarification_prompt_message.dart';

class BotClarificationPrompt {
  /// The number of times to prompt the user for information.
  final int maxAttempts;
  final List<BotClarificationPromptMessage> messages;
  final String? responseCard;

  BotClarificationPrompt({
    required this.maxAttempts,
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxAttempts'] = maxAttempts;
    map['messages'] =
        Input.encodeList<BotClarificationPromptMessage, Map<String, dynamic>>(
            messages, (value) => value.toMap());
    final responseCardValue = responseCard;
    if (responseCardValue != null) {
      map['responseCard'] = responseCardValue;
    }
    return map;
  }

  factory BotClarificationPrompt.fromMap(Map<String, dynamic> map) {
    return BotClarificationPrompt(
      maxAttempts: map['maxAttempts'] as int,
      messages: Input.decodeList<BotClarificationPromptMessage>(
          map['messages'],
          (value) => BotClarificationPromptMessage.fromMap(
              (value as Map).cast<String, dynamic>())),
      responseCard:
          map['responseCard'] == null ? null : map['responseCard'] as String,
    );
  }
}
