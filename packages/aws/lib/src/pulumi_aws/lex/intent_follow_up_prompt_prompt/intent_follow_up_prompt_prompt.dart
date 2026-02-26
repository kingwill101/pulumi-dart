// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../intent_follow_up_prompt_prompt_message/intent_follow_up_prompt_prompt_message.dart';

class IntentFollowUpPromptPrompt {
  /// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  final int maxAttempts;

  /// A set of messages, each of which provides a message string and its type.
  /// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
  /// Attributes are documented under message. Must contain between 1 and 15 messages.
  final List<IntentFollowUpPromptPromptMessage> messages;

  /// The response card. Amazon Lex will substitute session attributes and
  /// slot values into the response card. For more information, see
  /// [Example: Using a Response Card](https://docs.aws.amazon.com/lex/latest/dg/ex-resp-card.html). Must be less than or equal to 50000 characters in length.
  final String? responseCard;

  IntentFollowUpPromptPrompt({
    required this.maxAttempts,
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxAttempts'] = maxAttempts;
    map['messages'] = Input.encodeList<IntentFollowUpPromptPromptMessage,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    final responseCardValue = responseCard;
    if (responseCardValue != null) {
      map['responseCard'] = responseCardValue;
    }
    return map;
  }

  factory IntentFollowUpPromptPrompt.fromMap(Map<String, dynamic> map) {
    return IntentFollowUpPromptPrompt(
      maxAttempts: map['maxAttempts'] as int,
      messages: Input.decodeList<IntentFollowUpPromptPromptMessage>(
          map['messages'],
          (value) => IntentFollowUpPromptPromptMessage.fromMap(
              (value as Map).cast<String, dynamic>())),
      responseCard:
          map['responseCard'] == null ? null : map['responseCard'] as String,
    );
  }
}
