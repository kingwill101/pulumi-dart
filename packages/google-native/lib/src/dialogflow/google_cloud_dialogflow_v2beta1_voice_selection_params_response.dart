// ignore_for_file: unused_element, unnecessary_cast


/// Description of which voice to use for speech synthesis.
class GoogleCloudDialogflowV2beta1VoiceSelectionParamsResponse {
  /// Optional. The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and ssml_gender. For the list of available voices, please refer to [Supported voices and languages](https://cloud.google.com/text-to-speech/docs/voices).
  final String name;
  /// Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
  final String ssmlGender;

  /// Creates a new [GoogleCloudDialogflowV2beta1VoiceSelectionParamsResponse].
  /// [name] Optional. The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and ssml_gender. For the list of available voices, please refer to [Supported voices and languages](https://cloud.google.com/text-to-speech/docs/voices).
  /// [ssmlGender] Optional. The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement. If a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.
  GoogleCloudDialogflowV2beta1VoiceSelectionParamsResponse({
    required this.name,
    required this.ssmlGender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'ssmlGender': ssmlGender,
    };
  }

  factory GoogleCloudDialogflowV2beta1VoiceSelectionParamsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1VoiceSelectionParamsResponse(
      name: map['name'] as String,
      ssmlGender: map['ssmlGender'] as String,
    );
  }
}

