/// Status of the rule
enum RuleStatus {
  notActive("NotActive"),
  active("Active"),
  processing("Processing");

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

