/// Input method to configure Network Tap Rule.
enum ConfigurationType {
  valueFile("File"),
  valueInline("Inline");

  const ConfigurationType(this.value);
  final String value;

  static ConfigurationType fromValue(String value) {
    for (final item in ConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationType value: $value');
  }
}

