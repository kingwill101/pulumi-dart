// ignore_for_file: unused_element, unnecessary_cast

class IntentSlotValueElicitationPromptMessage {
  /// The text of the message. Must be less than or equal to 1000 characters in length.
  final String content;

  /// The content type of the message string.
  final String contentType;

  /// Identifies the message group that the message belongs to. When a group
  /// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
  final int? groupNumber;

  IntentSlotValueElicitationPromptMessage({
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

  factory IntentSlotValueElicitationPromptMessage.fromMap(
      Map<String, dynamic> map) {
    return IntentSlotValueElicitationPromptMessage(
      content: map['content'] as String,
      contentType: map['contentType'] as String,
      groupNumber:
          map['groupNumber'] == null ? null : map['groupNumber'] as int,
    );
  }
}
