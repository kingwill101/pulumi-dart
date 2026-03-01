/// Indicates NLU model training mode.
enum GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode {
  modelTrainingModeUnspecified("MODEL_TRAINING_MODE_UNSPECIFIED"),
  modelTrainingModeAutomatic("MODEL_TRAINING_MODE_AUTOMATIC"),
  modelTrainingModeManual("MODEL_TRAINING_MODE_MANUAL");

  const GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDialogflowCxV3beta1NluSettingsModelTrainingMode value: $value',
    );
  }
}
