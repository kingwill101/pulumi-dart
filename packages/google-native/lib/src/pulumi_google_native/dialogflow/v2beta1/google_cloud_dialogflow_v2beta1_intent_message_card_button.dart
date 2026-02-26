// ignore_for_file: unused_element, unnecessary_cast

/// Optional. Contains information about a button.
class GoogleCloudDialogflowV2beta1IntentMessageCardButton {
  /// Optional. The text to send back to the Dialogflow API or a URI to open.
  final String? postback;

  /// Optional. The text to show on the button.
  final String? text;

  GoogleCloudDialogflowV2beta1IntentMessageCardButton({
    this.postback,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postbackValue = postback;
    if (postbackValue != null) {
      map['postback'] = postbackValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCardButton.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCardButton(
      postback: map['postback'] == null ? null : map['postback'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
