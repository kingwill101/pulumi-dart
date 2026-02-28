/// Indicates the type of NLU model.
enum GoogleCloudDialogflowCxV3NluSettingsModelType {
  modelTypeUnspecified("MODEL_TYPE_UNSPECIFIED"),
  modelTypeStandard("MODEL_TYPE_STANDARD"),
  modelTypeAdvanced("MODEL_TYPE_ADVANCED");

  const GoogleCloudDialogflowCxV3NluSettingsModelType(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3NluSettingsModelType fromValue(String value) {
    for (final item in GoogleCloudDialogflowCxV3NluSettingsModelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowCxV3NluSettingsModelType value: $value');
  }
}
