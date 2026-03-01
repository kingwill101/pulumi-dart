/// If ``Enabled``, the rule is currently being applied. If ``Disabled``, the rule is not currently being applied.
enum RuleStatus {
  disabled("Disabled"),
  enabled("Enabled");

  const RuleStatus(this.value);
  final String value;

  static RuleStatus fromValue(String value) {
    for (final item in RuleStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleStatus value: $value');
  }
}

