import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates type of action rule
enum ActionRuleType implements pulumi.PulumiEnum<String> {
  valueSuppression("Suppression"),
  valueActionGroup("ActionGroup"),
  valueDiagnostics("Diagnostics");

  const ActionRuleType(this.wireValue);
  @override
  final String wireValue;

  static ActionRuleType fromValue(String value) {
    for (final item in ActionRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionRuleType value: $value');
  }
}
