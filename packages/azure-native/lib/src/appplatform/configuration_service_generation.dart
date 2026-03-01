/// The generation of the Application Configuration Service.
enum ConfigurationServiceGeneration {
  valueGen1("Gen1"),
  valueGen2("Gen2");

  const ConfigurationServiceGeneration(this.value);
  final String value;

  static ConfigurationServiceGeneration fromValue(String value) {
    for (final item in ConfigurationServiceGeneration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationServiceGeneration value: $value');
  }
}

