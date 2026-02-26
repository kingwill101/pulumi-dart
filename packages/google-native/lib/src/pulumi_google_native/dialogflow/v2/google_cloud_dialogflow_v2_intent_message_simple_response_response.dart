// ignore_for_file: unused_element, unnecessary_cast

/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse {
  /// Optional. The text to display.
  final String displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  final String ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  final String textToSpeech;

  GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse({
    required this.displayText,
    required this.ssml,
    required this.textToSpeech,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayText'] = displayText;
    map['ssml'] = ssml;
    map['textToSpeech'] = textToSpeech;
    return map;
  }

  factory GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageSimpleResponseResponse(
      displayText: map['displayText'] as String,
      ssml: map['ssml'] as String,
      textToSpeech: map['textToSpeech'] as String,
    );
  }
}
