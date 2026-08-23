/// The state of DNS security rule.
enum DnsSecurityRuleState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DnsSecurityRuleState(this.wireValue);
  final String wireValue;

  static DnsSecurityRuleState fromValue(String value) {
    for (final item in DnsSecurityRuleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DnsSecurityRuleState value: $value');
  }
}
