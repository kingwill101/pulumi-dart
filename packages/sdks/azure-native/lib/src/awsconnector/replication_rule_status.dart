/// Specifies whether the rule is enabled.
enum ReplicationRuleStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const ReplicationRuleStatus(this.wireValue);
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

