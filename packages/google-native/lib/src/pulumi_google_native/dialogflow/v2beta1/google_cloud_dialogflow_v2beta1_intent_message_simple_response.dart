// ignore_for_file: unused_element, unnecessary_cast

/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse {
  /// Optional. The text to display.
  final String? displayText;

  /// One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  final String? ssml;

  /// One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  final String? textToSpeech;

  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse({
    this.displayText,
    this.ssml,
    this.textToSpeech,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayTextValue = displayText;
    if (displayTextValue != null) {
      map['displayText'] = displayTextValue;
    }
    final ssmlValue = ssml;
    if (ssmlValue != null) {
      map['ssml'] = ssmlValue;
    }
    final textToSpeechValue = textToSpeech;
    if (textToSpeechValue != null) {
      map['textToSpeech'] = textToSpeechValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(
      displayText:
          map['displayText'] == null ? null : map['displayText'] as String,
      ssml: map['ssml'] == null ? null : map['ssml'] as String,
      textToSpeech:
          map['textToSpeech'] == null ? null : map['textToSpeech'] as String,
    );
  }
}
