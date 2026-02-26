// ignore_for_file: unused_element, unnecessary_cast

/// Optional. Contains information about a button.
class GoogleCloudDialogflowV2beta1IntentMessageCardButtonResponse {
  /// Optional. The text to send back to the Dialogflow API or a URI to open.
  final String postback;

  /// Optional. The text to show on the button.
  final String text;

  GoogleCloudDialogflowV2beta1IntentMessageCardButtonResponse({
    required this.postback,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postback'] = postback;
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageCardButtonResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageCardButtonResponse(
      postback: map['postback'] as String,
      text: map['text'] as String,
    );
  }
}
