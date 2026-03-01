/// Property status
enum CFNFeatureConfigurationStatus {
  dISABLED("DISABLED"),
  eNABLED("ENABLED");

  const CFNFeatureConfigurationStatus(this.value);
  final String value;

  static CFNFeatureConfigurationStatus fromValue(String value) {
    for (final item in CFNFeatureConfigurationStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CFNFeatureConfigurationStatus value: $value');
  }
}

