// ignore_for_file: unused_element, unnecessary_cast


/// The simple response message containing speech or text.
class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse {
  /// Optional. The text to display.
  final String? displayText;
  /// One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  final String? ssml;
  /// One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  final String? textToSpeech;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse].
  /// [displayText] Optional. The text to display.
  /// [ssml] One of text_to_speech or ssml must be provided. Structured spoken response to the user in the SSML format. Mutually exclusive with text_to_speech.
  /// [textToSpeech] One of text_to_speech or ssml must be provided. The plain text of the speech output. Mutually exclusive with ssml.
  GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse({
    this.displayText,
    this.ssml,
    this.textToSpeech,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayText': ?displayText,
      'ssml': ?ssml,
      'textToSpeech': ?textToSpeech,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse(
      displayText: map['displayText'] == null ? null : map['displayText'] as String,
      ssml: map['ssml'] == null ? null : map['ssml'] as String,
      textToSpeech: map['textToSpeech'] == null ? null : map['textToSpeech'] as String,
    );
  }
}

