/// The type of the spark config.
enum ConfigurationType {
  default_("Default"),
  customized("Customized"),
  artifact("Artifact");

  const ConfigurationType(this.wireValue);
  final String wireValue;

  static ConfigurationType fromValue(String value) {
    for (final item in ConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfigurationType value: $value');
  }
}
