/// Configuration Deployment Type.
enum ConfigurationType {
  valueSecurityAdmin("SecurityAdmin"),
  valueConnectivity("Connectivity"),
  valueSecurityUser("SecurityUser"),
  valueRouting("Routing");

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

