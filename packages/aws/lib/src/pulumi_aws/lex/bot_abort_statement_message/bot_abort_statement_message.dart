// ignore_for_file: unused_element, unnecessary_cast

class BotAbortStatementMessage {
  /// The text of the message.
  final String content;

  /// The content type of the message string.
  final String contentType;

  /// Identifies the message group that the message belongs to. When a group
  /// is assigned to a message, Amazon Lex returns one message from each group in the response.
  final int? groupNumber;

  BotAbortStatementMessage({
    required this.content,
    required this.contentType,
    this.groupNumber,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['contentType'] = contentType;
    final groupNumberValue = groupNumber;
    if (groupNumberValue != null) {
      map['groupNumber'] = groupNumberValue;
    }
    return map;
  }

  factory BotAbortStatementMessage.fromMap(Map<String, dynamic> map) {
    return BotAbortStatementMessage(
      content: map['content'] as String,
      contentType: map['contentType'] as String,
      groupNumber:
          map['groupNumber'] == null ? null : map['groupNumber'] as int,
    );
  }
}
