/// The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced model variant is specified and an enhanced version of the specified model for the language does not exist, then it would emit an error.
enum GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant {
  speechModelVariantUnspecified("SPEECH_MODEL_VARIANT_UNSPECIFIED"),
  useBestAvailable("USE_BEST_AVAILABLE"),
  useStandard("USE_STANDARD"),
  useEnhanced("USE_ENHANCED");

  const GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant(this.value);
  final String value;

  static GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2SpeechToTextConfigSpeechModelVariant value: $value');
  }
}

