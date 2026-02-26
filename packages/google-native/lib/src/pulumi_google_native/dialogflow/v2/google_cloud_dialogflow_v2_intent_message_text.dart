// ignore_for_file: unused_element, unnecessary_cast

/// The text response message.
class GoogleCloudDialogflowV2IntentMessageText {
  /// Optional. The collection of the agent's responses.
  final List<String>? text;

  GoogleCloudDialogflowV2IntentMessageText({
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageText.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageText(
      text: map['text'] == null ? null : (map['text'] as List).cast<String>(),
    );
  }
}
