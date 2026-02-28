// ignore_for_file: unused_element, unnecessary_cast

/// Rich Business Messaging (RBM) suggested reply that the user can click instead of typing in their own response.
class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply {
  /// Opaque payload that the Dialogflow receives in a user event when the user taps the suggested reply. This data will be also forwarded to webhook to allow performing custom business logic.
  final String? postbackData;

  /// Suggested reply text.
  final String? text;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply].
  /// [postbackData] Opaque payload that the Dialogflow receives in a user event when the user taps the suggested reply. This data will be also forwarded to webhook to allow performing custom business logic.
  /// [text] Suggested reply text.
  GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply({
    this.postbackData,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postbackDataValue = postbackData;
    if (postbackDataValue != null) {
      map['postbackData'] = postbackDataValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply(
      postbackData:
          map['postbackData'] == null ? null : map['postbackData'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
