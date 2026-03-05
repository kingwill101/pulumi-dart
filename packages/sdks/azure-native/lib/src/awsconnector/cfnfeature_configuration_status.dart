/// Property status
enum CFNFeatureConfigurationStatus {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const CFNFeatureConfigurationStatus(this.wireValue);
  final String wireValue;

  static CFNFeatureConfigurationStatus fromValue(String value) {
    for (final item in CFNFeatureConfigurationStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CFNFeatureConfigurationStatus value: $value');
  }
}

