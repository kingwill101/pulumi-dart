import 'package:pulumi/pulumi.dart' as pulumi;

/// The alert rule state.
enum AlertRuleState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const AlertRuleState(this.wireValue);
  @override
  final String wireValue;

  static AlertRuleState fromValue(String value) {
    for (final item in AlertRuleState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleState value: $value');
  }
}
