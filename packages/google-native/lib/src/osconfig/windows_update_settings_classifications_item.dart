enum WindowsUpdateSettingsClassificationsItem {
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

  const WindowsUpdateSettingsClassificationsItem(this.value);
  final String value;

  static WindowsUpdateSettingsClassificationsItem fromValue(String value) {
    for (final item in WindowsUpdateSettingsClassificationsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown WindowsUpdateSettingsClassificationsItem value: $value');
  }
}
