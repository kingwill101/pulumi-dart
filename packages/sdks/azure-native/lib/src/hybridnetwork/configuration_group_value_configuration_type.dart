/// The value which indicates if configuration values are secrets
enum ConfigurationGroupValueConfigurationType {
  valueUnknown("Unknown"),
  valueSecret("Secret"),
  valueOpen("Open");

  const ConfigurationGroupValueConfigurationType(this.value);
  final String value;

  static ConfigurationGroupValueConfigurationType fromValue(String value) {
    for (final item in ConfigurationGroupValueConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationGroupValueConfigurationType value: $value');
  }
}

