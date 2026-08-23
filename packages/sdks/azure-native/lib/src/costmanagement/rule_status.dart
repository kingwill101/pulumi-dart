/// Status of the rule
enum RuleStatus {
  notActive("NotActive"),
  active("Active"),
  processing("Processing");

  const RuleStatus(this.wireValue);
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
