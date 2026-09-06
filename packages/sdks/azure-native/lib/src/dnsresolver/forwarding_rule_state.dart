import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of forwarding rule.
enum ForwardingRuleState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const ForwardingRuleState(this.wireValue);
  @override
  final String wireValue;

  static ForwardingRuleState fromValue(String value) {
    for (final item in ForwardingRuleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ForwardingRuleState value: $value');
  }
}
