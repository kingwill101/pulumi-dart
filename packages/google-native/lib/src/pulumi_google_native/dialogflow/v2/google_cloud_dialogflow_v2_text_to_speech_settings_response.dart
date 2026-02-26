// ignore_for_file: unused_element, unnecessary_cast

/// Instructs the speech synthesizer on how to generate the output audio content.
class GoogleCloudDialogflowV2TextToSpeechSettingsResponse {
  /// Optional. Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  final bool enableTextToSpeech;

  /// Audio encoding of the synthesized audio content.
  final String outputAudioEncoding;

  /// Optional. The synthesis sample rate (in hertz) for this audio. If not provided, then the synthesizer will use the default sample rate based on the audio encoding. If this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality).
  final int sampleRateHertz;

  /// Optional. Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/docs/reference/language) to SynthesizeSpeechConfig.
  final Map<String, String> synthesizeSpeechConfigs;

  GoogleCloudDialogflowV2TextToSpeechSettingsResponse({
    required this.enableTextToSpeech,
    required this.outputAudioEncoding,
    required this.sampleRateHertz,
    required this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableTextToSpeech'] = enableTextToSpeech;
    map['outputAudioEncoding'] = outputAudioEncoding;
    map['sampleRateHertz'] = sampleRateHertz;
    map['synthesizeSpeechConfigs'] = synthesizeSpeechConfigs;
    return map;
  }

  factory GoogleCloudDialogflowV2TextToSpeechSettingsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2TextToSpeechSettingsResponse(
      enableTextToSpeech: map['enableTextToSpeech'] as bool,
      outputAudioEncoding: map['outputAudioEncoding'] as String,
      sampleRateHertz: map['sampleRateHertz'] as int,
      synthesizeSpeechConfigs:
          (map['synthesizeSpeechConfigs'] as Map).cast<String, String>(),
    );
  }
}
