/// Ingress policy for the network.
enum PolicyRule {
  valueDenyAll("DenyAll"),
  valueAllowAll("AllowAll"),
  valueAllowSameNamespace("AllowSameNamespace");

  const PolicyRule(this.value);
  final String value;

  static PolicyRule fromValue(String value) {
    for (final item in PolicyRule.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyRule value: $value');
  }
}

