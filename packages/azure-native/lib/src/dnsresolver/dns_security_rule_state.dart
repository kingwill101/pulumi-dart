/// The state of DNS security rule.
enum DnsSecurityRuleState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DnsSecurityRuleState(this.value);
  final String value;

  static DnsSecurityRuleState fromValue(String value) {
    for (final item in DnsSecurityRuleState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsSecurityRuleState value: $value');
  }
}

