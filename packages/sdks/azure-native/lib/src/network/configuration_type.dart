/// Configuration Deployment Type.
enum ConfigurationType {
  valueSecurityAdmin("SecurityAdmin"),
  valueConnectivity("Connectivity"),
  valueSecurityUser("SecurityUser"),
  valueRouting("Routing");

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

