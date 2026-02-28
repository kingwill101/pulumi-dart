// ignore_for_file: unused_element, unnecessary_cast

/// Configures speech transcription for ConversationProfile.
class GoogleCloudDialogflowV2SpeechToTextConfigResponse {
  /// Which Speech model to select. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then a default model is used. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.
  final String model;

  /// The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
  final String speechModelVariant;

  /// Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  final bool useTimeoutBasedEndpointing;

  /// Creates a new [GoogleCloudDialogflowV2SpeechToTextConfigResponse].
  /// [model] Which Speech model to select. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then a default model is used. Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics#select-model) for more details.
  /// [speechModelVariant] The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
  /// [useTimeoutBasedEndpointing] Use timeout based endpointing, interpreting endpointer sensitivy as seconds of timeout value.
  GoogleCloudDialogflowV2SpeechToTextConfigResponse({
    required this.model,
    required this.speechModelVariant,
    required this.useTimeoutBasedEndpointing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['model'] = model;
    map['speechModelVariant'] = speechModelVariant;
    map['useTimeoutBasedEndpointing'] = useTimeoutBasedEndpointing;
    return map;
  }

  factory GoogleCloudDialogflowV2SpeechToTextConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SpeechToTextConfigResponse(
      model: map['model'] as String,
      speechModelVariant: map['speechModelVariant'] as String,
      useTimeoutBasedEndpointing: map['useTimeoutBasedEndpointing'] as bool,
    );
  }
}
