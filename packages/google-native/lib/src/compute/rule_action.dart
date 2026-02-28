/// This is deprecated and has no effect. Do not use.
enum RuleAction {
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG"),
  noAction("NO_ACTION");

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

