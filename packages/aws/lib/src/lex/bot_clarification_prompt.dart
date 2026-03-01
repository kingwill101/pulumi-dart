// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bot_clarification_prompt_message.dart';

class BotClarificationPrompt {
  /// The number of times to prompt the user for information.
  final int maxAttempts;
  final List<BotClarificationPromptMessage> messages;
  final String? responseCard;

  /// Creates a new [BotClarificationPrompt].
  /// [maxAttempts] The number of times to prompt the user for information.
  /// [messages] Required.
  /// [responseCard] Optional.
  BotClarificationPrompt({
    required this.maxAttempts,
    required this.messages,
    this.responseCard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAttempts': maxAttempts,
      'messages':
          pulumi.Input.encodeList<
            BotClarificationPromptMessage,
            Map<String, dynamic>
          >(messages, (value) => value.toMap()),
      'responseCard': ?responseCard,
    };
  }

  factory BotClarificationPrompt.fromMap(Map<String, dynamic> map) {
    return BotClarificationPrompt(
      maxAttempts: map['maxAttempts'] as int,
      messages: pulumi.Input.decodeList<BotClarificationPromptMessage>(
        map['messages'],
        (value) => BotClarificationPromptMessage.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      responseCard: map['responseCard'] == null
          ? null
          : map['responseCard'] as String,
    );
  }
}
