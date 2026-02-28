// ignore_for_file: unused_element, unnecessary_cast

class GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry {
  /// Optional. Create time of the message entry.
  final String? createTime;

  /// Optional. The language of the text.
  final String? languageCode;

  /// Optional. Participant role of the message.
  /// Possible values are: `HUMAN_AGENT`, `AUTOMATED_AGENT`, `END_USER`.
  final String? role;

  /// Optional. Transcript content of the message.
  final String? text;

  /// Creates a new [GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry].
  /// [createTime] Optional. Create time of the message entry.
  /// [languageCode] Optional. The language of the text.
  /// [role] Optional. Participant role of the message.
  /// [text] Optional. Transcript content of the message.
  GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry({
    this.createTime,
    this.languageCode,
    this.role,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry.fromMap(
      Map<String, dynamic> map) {
    return GeneratorSummarizationContextFewShotExampleConversationContextMessageEntry(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
