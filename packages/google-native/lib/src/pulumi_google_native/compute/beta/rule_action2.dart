/// This is deprecated and has no effect. Do not use.
enum RuleAction2 {
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG"),
  noAction("NO_ACTION");

  const RuleAction2(this.value);
  final String value;

  static RuleAction2 fromValue(String value) {
    for (final item in RuleAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction2 value: $value');
  }
}
