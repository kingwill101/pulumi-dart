// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IntentConclusionStatementMessage {
  /// The text of the message. Must be less than or equal to 1000 characters in length.
  final pulumi.Input<String> content;
  /// The content type of the message string.
  final pulumi.Input<String> contentType;
  /// Identifies the message group that the message belongs to. When a group
  /// is assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).
  final pulumi.Input<int>? groupNumber;

  /// Creates a new [IntentConclusionStatementMessage].
  /// [content] The text of the message. Must be less than or equal to 1000 characters in length.
  /// [contentType] The content type of the message string.
  /// [groupNumber] Identifies the message group that the message belongs to. When a group
  IntentConclusionStatementMessage({
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

  factory IntentConclusionStatementMessage.fromMap(Map<String, dynamic> map) {
    return IntentConclusionStatementMessage(
      content: (map['content'] as String).input(),
      contentType: (map['contentType'] as String).input(),
      groupNumber: map['groupNumber'] == null ? null : ((map['groupNumber'] as int).input()).input(),
    );
  }
}

