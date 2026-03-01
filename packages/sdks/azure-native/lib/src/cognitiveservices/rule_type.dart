/// Type of a managed network Outbound Rule of a cognitive services account.
enum RuleType {
  valueFQDN("FQDN"),
  valuePrivateEndpoint("PrivateEndpoint"),
  valueServiceTag("ServiceTag");

  const RuleType(this.value);
  final String value;

  static RuleType fromValue(String value) {
    for (final item in RuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleType value: $value');
  }
}

