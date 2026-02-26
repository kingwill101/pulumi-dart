// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_text_to_speech_settings_output_audio_encoding.dart';

/// Instructs the speech synthesizer on how to generate the output audio content.
class GoogleCloudDialogflowV2TextToSpeechSettings {
  /// Optional. Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  final bool? enableTextToSpeech;

  /// Audio encoding of the synthesized audio content.
  final GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding
      outputAudioEncoding;

  /// Optional. The synthesis sample rate (in hertz) for this audio. If not provided, then the synthesizer will use the default sample rate based on the audio encoding. If this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality).
  final int? sampleRateHertz;

  /// Optional. Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/docs/reference/language) to SynthesizeSpeechConfig.
  final Map<String, String>? synthesizeSpeechConfigs;

  GoogleCloudDialogflowV2TextToSpeechSettings({
    this.enableTextToSpeech,
    required this.outputAudioEncoding,
    this.sampleRateHertz,
    this.synthesizeSpeechConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableTextToSpeechValue = enableTextToSpeech;
    if (enableTextToSpeechValue != null) {
      map['enableTextToSpeech'] = enableTextToSpeechValue;
    }
    map['outputAudioEncoding'] = outputAudioEncoding.value;
    final sampleRateHertzValue = sampleRateHertz;
    if (sampleRateHertzValue != null) {
      map['sampleRateHertz'] = sampleRateHertzValue;
    }
    final synthesizeSpeechConfigsValue = synthesizeSpeechConfigs;
    if (synthesizeSpeechConfigsValue != null) {
      map['synthesizeSpeechConfigs'] = synthesizeSpeechConfigsValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2TextToSpeechSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2TextToSpeechSettings(
      enableTextToSpeech: map['enableTextToSpeech'] == null
          ? null
          : map['enableTextToSpeech'] as bool,
      outputAudioEncoding:
          GoogleCloudDialogflowV2TextToSpeechSettingsOutputAudioEncoding
              .fromValue(map['outputAudioEncoding'] as String),
      sampleRateHertz:
          map['sampleRateHertz'] == null ? null : map['sampleRateHertz'] as int,
      synthesizeSpeechConfigs: map['synthesizeSpeechConfigs'] == null
          ? null
          : (map['synthesizeSpeechConfigs'] as Map).cast<String, String>(),
    );
  }
}
