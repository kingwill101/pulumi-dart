import 'package:pulumi/pulumi.dart' as pulumi;

/// If ``Enabled``, the rule is currently being applied. If ``Disabled``, the rule is not currently being applied.
enum RuleStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const RuleStatus(this.wireValue);
  @override
  final String wireValue;

  static RuleStatus fromValue(String value) {
    for (final item in RuleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleStatus value: $value');
  }
}
