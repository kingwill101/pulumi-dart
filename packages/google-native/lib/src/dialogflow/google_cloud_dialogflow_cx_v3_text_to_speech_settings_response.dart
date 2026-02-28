// ignore_for_file: unused_element, unnecessary_cast

/// Settings related to speech synthesizing.
class GoogleCloudDialogflowCxV3TextToSpeechSettingsResponse {
  /// Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/cx/docs/reference/language) to SynthesizeSpeechConfig. These settings affect: - The [phone gateway](https://cloud.google.com/dialogflow/cx/docs/concept/integration/phone-gateway) synthesize configuration set via Agent.text_to_speech_settings. - How speech is synthesized when invoking session APIs. Agent.text_to_speech_settings only applies if OutputAudioConfig.synthesize_speech_config is not specified.
  final Map<String, String> synthesizeSpeechConfigs;

  /// Creates a new [GoogleCloudDialogflowCxV3TextToSpeechSettingsResponse].
  /// [synthesizeSpeechConfigs] Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/cx/docs/reference/language) to SynthesizeSpeechConfig. These settings affect: - The [phone gateway](https://cloud.google.com/dialogflow/cx/docs/concept/integration/phone-gateway) synthesize configuration set via Agent.text_to_speech_settings. - How speech is synthesized when invoking session APIs. Agent.text_to_speech_settings only applies if OutputAudioConfig.synthesize_speech_config is not specified.
  GoogleCloudDialogflowCxV3TextToSpeechSettingsResponse({
    required this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['synthesizeSpeechConfigs'] = synthesizeSpeechConfigs;
    return map;
  }

  factory GoogleCloudDialogflowCxV3TextToSpeechSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3TextToSpeechSettingsResponse(
      synthesizeSpeechConfigs:
          (map['synthesizeSpeechConfigs'] as Map).cast<String, String>(),
    );
  }
}
