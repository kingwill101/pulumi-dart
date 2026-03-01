// ignore_for_file: unused_element, unnecessary_cast

/// Contains information about a button.
class GoogleCloudDialogflowV2IntentMessageCardButton {
  /// Optional. The text to send back to the Dialogflow API or a URI to open.
  final String? postback;

  /// Optional. The text to show on the button.
  final String? text;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageCardButton].
  /// [postback] Optional. The text to send back to the Dialogflow API or a URI to open.
  /// [text] Optional. The text to show on the button.
  GoogleCloudDialogflowV2IntentMessageCardButton({this.postback, this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'postback': ?postback, 'text': ?text};
  }

  factory GoogleCloudDialogflowV2IntentMessageCardButton.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2IntentMessageCardButton(
      postback: map['postback'] == null ? null : map['postback'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
