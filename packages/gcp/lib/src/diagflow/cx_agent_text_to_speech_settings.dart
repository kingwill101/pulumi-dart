// ignore_for_file: unused_element, unnecessary_cast

class CxAgentTextToSpeechSettings {
  /// Configuration of how speech should be synthesized, mapping from [language](https://cloud.google.com/dialogflow/cx/docs/reference/language) to [SynthesizeSpeechConfig](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#synthesizespeechconfig).
  /// These settings affect:
  /// * The phone gateway synthesize configuration set via Agent.text_to_speech_settings.
  /// * How speech is synthesized when invoking session APIs. `Agent.text_to_speech_settings` only applies if `OutputAudioConfig.synthesize_speech_config` is not specified.
  final String? synthesizeSpeechConfigs;

  /// Creates a new [CxAgentTextToSpeechSettings].
  /// [synthesizeSpeechConfigs] Configuration of how speech should be synthesized, mapping from [language](https://cloud.google.com/dialogflow/cx/docs/reference/language) to [SynthesizeSpeechConfig](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents#synthesizespeechconfig).
  CxAgentTextToSpeechSettings({
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final synthesizeSpeechConfigsValue = synthesizeSpeechConfigs;
    if (synthesizeSpeechConfigsValue != null) {
      map['synthesizeSpeechConfigs'] = synthesizeSpeechConfigsValue;
    }
    return map;
  }

  factory CxAgentTextToSpeechSettings.fromMap(Map<String, dynamic> map) {
    return CxAgentTextToSpeechSettings(
      synthesizeSpeechConfigs: map['synthesizeSpeechConfigs'] == null
          ? null
          : map['synthesizeSpeechConfigs'] as String,
    );
  }
}
