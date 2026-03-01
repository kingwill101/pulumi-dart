/// Source of the configuration.
enum ConfigurationSource {
  valueSystemDefault("system-default"),
  valueUserOverride("user-override");

  const ConfigurationSource(this.value);
  final String value;

  static ConfigurationSource fromValue(String value) {
    for (final item in ConfigurationSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationSource value: $value');
  }
}

