/// Gets or sets the configuration type.
enum ConfigurationType {
  valueIISConnectionString("IISConnectionString"),
  valueIISAuthentication("IISAuthentication"),
  valueApacheTomcatContextResource("ApacheTomcatContextResource");

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

