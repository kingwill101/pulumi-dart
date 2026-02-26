// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_speech_to_text_config_speech_model_variant.dart';

/// Configures speech transcription for ConversationProfile.
class GoogleCloudDialogflowV2SpeechToTextConfig {
  /// Which Speech model to select. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then a default model is used. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.
  final String? model;

  /// The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
  final GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant?
      speechModelVariant;

  /// Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  final bool? useTimeoutBasedEndpointing;

  GoogleCloudDialogflowV2SpeechToTextConfig({
    this.model,
    this.speechModelVariant,
    this.useTimeoutBasedEndpointing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modelValue = model;
    if (modelValue != null) {
      map['model'] = modelValue;
    }
    final speechModelVariantValue = speechModelVariant;
    if (speechModelVariantValue != null) {
      map['speechModelVariant'] = speechModelVariantValue.value;
    }
    final useTimeoutBasedEndpointingValue = useTimeoutBasedEndpointing;
    if (useTimeoutBasedEndpointingValue != null) {
      map['useTimeoutBasedEndpointing'] = useTimeoutBasedEndpointingValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2SpeechToTextConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SpeechToTextConfig(
      model: map['model'] == null ? null : map['model'] as String,
      speechModelVariant: map['speechModelVariant'] == null
          ? null
          : GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant
              .fromValue(map['speechModelVariant'] as String),
      useTimeoutBasedEndpointing: map['useTimeoutBasedEndpointing'] == null
          ? null
          : map['useTimeoutBasedEndpointing'] as bool,
    );
  }
}
