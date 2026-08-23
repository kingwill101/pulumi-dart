/// Type of a managed network Outbound Rule of a machine learning workspace.
enum RuleType {
  fQDN("FQDN"),
  privateEndpoint("PrivateEndpoint"),
  serviceTag("ServiceTag");

  const RuleType(this.wireValue);
  final String wireValue;

  static RuleType fromValue(String value) {
    for (final item in RuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleType value: $value');
  }
}
