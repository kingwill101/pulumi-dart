import 'package:pulumi/pulumi.dart' as pulumi;

/// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
enum RoutingRuleEnabledState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const RoutingRuleEnabledState(this.wireValue);
  @override
  final String wireValue;

  static RoutingRuleEnabledState fromValue(String value) {
    for (final item in RoutingRuleEnabledState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutingRuleEnabledState value: $value');
  }
}
