/// Specifies whether the rule is enabled.
enum ReplicationRuleStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const ReplicationRuleStatus(this.value);
  final String value;

  static ReplicationRuleStatus fromValue(String value) {
    for (final item in ReplicationRuleStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReplicationRuleStatus value: $value');
  }
}

