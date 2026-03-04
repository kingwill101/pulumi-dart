/// The value which indicates if configuration values are secrets
enum ConfigurationGroupValueConfigurationType {
  valueUnknown("Unknown"),
  valueSecret("Secret"),
  valueOpen("Open");

  const ConfigurationGroupValueConfigurationType(this.wireValue);
  final String wireValue;

  static ConfigurationGroupValueConfigurationType fromValue(String value) {
    for (final item in ConfigurationGroupValueConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ConfigurationGroupValueConfigurationType value: $value',
    );
  }
}
