/// Required
enum RuleAction5 {
  noAction("NO_ACTION"),
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG");

  const RuleAction5(this.value);
  final String value;

  static RuleAction5 fromValue(String value) {
    for (final item in RuleAction5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction5 value: $value');
  }
}
