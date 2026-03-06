// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_follow_up_prompt_prompt_message.dart';

class IntentFollowUpPromptPrompt {
  /// The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  final pulumi.Input<int> maxAttempts;
  /// A set of messages, each of which provides a message string and its type.
  /// You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).
  /// Attributes are documented under message. Must contain between 1 and 15 messages.
  final pulumi.Input<List<IntentFollowUpPromptPromptMessage>> messages;
  /// The response card. Amazon Lex will substitute session attributes and
  /// slot values into the response card. For more information, see
  /// [Example: Using a Response Card](https://docs.aws.amazon.com/lex/latest/dg/ex-resp-card.html). Must be less than or equal to 50000 characters in length.
  final pulumi.Input<String>? responseCard;

  /// Creates a new [IntentFollowUpPromptPrompt].
  /// [maxAttempts] The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive).
  /// [messages] A set of messages, each of which provides a message string and its type.
  /// [responseCard] The response card. Amazon Lex will substitute session attributes and
  const IntentFollowUpPromptPrompt({
    required this.maxAttempts,
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAttempts': maxAttempts,
      'messages': pulumi.Input.mapInputValue<List<IntentFollowUpPromptPromptMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<IntentFollowUpPromptPromptMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseCard': ?responseCard,
    };
  }

  factory IntentFollowUpPromptPrompt.fromMap(Map<String, dynamic> map) {
    return IntentFollowUpPromptPrompt(
      maxAttempts: pulumi.Input.fromValue(map['maxAttempts'] as int),
      messages: pulumi.Input.fromValue(pulumi.Input.decodeList<IntentFollowUpPromptPromptMessage>(map['messages']!, (value) => IntentFollowUpPromptPromptMessage.fromMap((value as Map).cast<String, dynamic>()))),
      responseCard: (() { final guardedValue = map['responseCard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

