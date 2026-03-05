/// Gets or sets the configuration type.
enum ConfigurationType {
  valueIISConnectionString("IISConnectionString"),
  valueIISAuthentication("IISAuthentication"),
  valueApacheTomcatContextResource("ApacheTomcatContextResource");

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

