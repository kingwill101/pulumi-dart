/// Required
enum RuleAction {
  noAction("NO_ACTION"),
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG");

  const RuleAction(this.value);
  final String value;

  static RuleAction fromValue(String value) {
    for (final item in RuleAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction value: $value');
  }
}

