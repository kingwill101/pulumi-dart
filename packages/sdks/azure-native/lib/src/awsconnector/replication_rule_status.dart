import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the rule is enabled.
enum ReplicationRuleStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const ReplicationRuleStatus(this.wireValue);
  @override
  final String wireValue;

  static ReplicationRuleStatus fromValue(String value) {
    for (final item in ReplicationRuleStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationRuleStatus value: $value');
  }
}
