/// Indicates NLU model training mode.
enum GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode {
  modelTrainingModeUnspecified("MODEL_TRAINING_MODE_UNSPECIFIED"),
  modelTrainingModeAutomatic("MODEL_TRAINING_MODE_AUTOMATIC"),
  modelTrainingModeManual("MODEL_TRAINING_MODE_MANUAL");

  const GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowCxV3NluSettingsModelTrainingMode value: $value');
  }
}
