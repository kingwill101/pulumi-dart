/// Ingress policy for the network.
enum PolicyRule {
  valueDenyAll("DenyAll"),
  valueAllowAll("AllowAll"),
  valueAllowSameNamespace("AllowSameNamespace");

  const PolicyRule(this.wireValue);
  final String wireValue;

  static PolicyRule fromValue(String value) {
    for (final item in PolicyRule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyRule value: $value');
  }
}

