/// This is deprecated and has no effect. Do not use.
enum RuleAction3 {
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG"),
  noAction("NO_ACTION");

  const RuleAction3(this.value);
  final String value;

  static RuleAction3 fromValue(String value) {
    for (final item in RuleAction3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction3 value: $value');
  }
}
