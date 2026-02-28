enum WindowsUpdateSettingsClassificationsItemOsconfigV1beta {
  classificationUnspecified("CLASSIFICATION_UNSPECIFIED"),
  critical("CRITICAL"),
  security("SECURITY"),
  definition("DEFINITION"),
  driver("DRIVER"),
  featurePack("FEATURE_PACK"),
  servicePack("SERVICE_PACK"),
  tool("TOOL"),
  updateRollup("UPDATE_ROLLUP"),
  update("UPDATE");

  const WindowsUpdateSettingsClassificationsItemOsconfigV1beta(this.value);
  final String value;

  static WindowsUpdateSettingsClassificationsItemOsconfigV1beta fromValue(
      String value) {
    for (final item
        in WindowsUpdateSettingsClassificationsItemOsconfigV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown WindowsUpdateSettingsClassificationsItemOsconfigV1beta value: $value');
  }
}
