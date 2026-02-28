/// Optional. Which variant of the Speech model to use.
enum GoogleCloudDialogflowCxV3InputAudioConfigModelVariant {
  speechModelVariantUnspecified("SPEECH_MODEL_VARIANT_UNSPECIFIED"),
  useBestAvailable("USE_BEST_AVAILABLE"),
  useStandard("USE_STANDARD"),
  useEnhanced("USE_ENHANCED");

  const GoogleCloudDialogflowCxV3InputAudioConfigModelVariant(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3InputAudioConfigModelVariant fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowCxV3InputAudioConfigModelVariant.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowCxV3InputAudioConfigModelVariant value: $value');
  }
}
