// ignore_for_file: unused_element, unnecessary_cast


class BotClarificationPromptMessage {
  /// The text of the message.
  final String content;
  /// The content type of the message string.
  final String contentType;
  /// Identifies the message group that the message belongs to. When a group
  /// is assigned to a message, Amazon Lex returns one message from each group in the response.
  final int? groupNumber;

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
      content: map['content'] as String,
      contentType: map['contentType'] as String,
      groupNumber: map['groupNumber'] == null ? null : map['groupNumber'] as int,
    );
  }
}

