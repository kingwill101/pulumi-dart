// ignore_for_file: unused_element, unnecessary_cast

/// Rich Business Messaging (RBM) suggested reply that the user can click instead of typing in their own response.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse {
  /// Opaque payload that the Dialogflow receives in a user event when the user taps the suggested reply. This data will be also forwarded to webhook to allow performing custom business logic.
  final String postbackData;

  /// Suggested reply text.
  final String text;

  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse({
    required this.postbackData,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postbackData'] = postbackData;
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReplyResponse(
      postbackData: map['postbackData'] as String,
      text: map['text'] as String,
    );
  }
}
