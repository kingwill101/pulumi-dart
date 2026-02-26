// ignore_for_file: unused_element, unnecessary_cast

/// The text response message.
class GoogleCloudDialogflowV2IntentMessageTextResponse {
  /// Optional. The collection of the agent's responses.
  final List<String> text;

  GoogleCloudDialogflowV2IntentMessageTextResponse({
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['text'] = text;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageTextResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageTextResponse(
      text: (map['text'] as List).cast<String>(),
    );
  }
}
