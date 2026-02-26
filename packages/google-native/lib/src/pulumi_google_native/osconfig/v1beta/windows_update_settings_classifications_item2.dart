enum WindowsUpdateSettingsClassificationsItem2 {
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

  const WindowsUpdateSettingsClassificationsItem2(this.value);
  final String value;

  static WindowsUpdateSettingsClassificationsItem2 fromValue(String value) {
    for (final item in WindowsUpdateSettingsClassificationsItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown WindowsUpdateSettingsClassificationsItem2 value: $value');
  }
}
