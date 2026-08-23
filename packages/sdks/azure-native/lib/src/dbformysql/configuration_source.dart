/// Source of the configuration.
enum ConfigurationSource {
  valueSystemDefault("system-default"),
  valueUserOverride("user-override");

  const ConfigurationSource(this.wireValue);
  final String wireValue;

  static ConfigurationSource fromValue(String value) {
    for (final item in ConfigurationSource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationSource value: $value');
  }
}
