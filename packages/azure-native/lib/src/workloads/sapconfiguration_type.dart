/// The configuration type. Eg: Deployment/Discovery
enum SAPConfigurationType {
  deployment("Deployment"),
  discovery("Discovery"),
  deploymentWithOSConfig("DeploymentWithOSConfig");

  const SAPConfigurationType(this.value);
  final String value;

  static SAPConfigurationType fromValue(String value) {
    for (final item in SAPConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPConfigurationType value: $value');
  }
}

