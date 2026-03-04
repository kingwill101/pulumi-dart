// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BotClarificationPromptMessage {
  /// The text of the message.
  final pulumi.Input<String> content;

  /// The content type of the message string.
  final pulumi.Input<String> contentType;

  /// Identifies the message group that the message belongs to. When a group
  /// is assigned to a message, Amazon Lex returns one message from each group in the response.
  final pulumi.Input<int>? groupNumber;

  /// Creates a new [BotClarificationPromptMessage].
  /// [content] The text of the message.
  /// [contentType] The content type of the message string.
  /// [groupNumber] Identifies the message group that the message belongs to. When a group
  BotClarificationPromptMessage({
    required this.content,
    required this.contentType,
    this.groupNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'contentType': contentType,
      'groupNumber': ?groupNumber,
    };
  }

  factory BotClarificationPromptMessage.fromMap(Map<String, dynamic> map) {
    return BotClarificationPromptMessage(
      content: pulumi.Input.fromValue(map['content'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      groupNumber: (() {
        final guardedValue = map['groupNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
