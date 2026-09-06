import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of DNS security rule.
enum DnsSecurityRuleState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const DnsSecurityRuleState(this.wireValue);
  @override
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
