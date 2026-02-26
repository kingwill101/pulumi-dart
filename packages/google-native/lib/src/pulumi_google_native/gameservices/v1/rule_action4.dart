/// Required
enum RuleAction4 {
  noAction("NO_ACTION"),
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG");

  const RuleAction4(this.value);
  final String value;

  static RuleAction4 fromValue(String value) {
    for (final item in RuleAction4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleAction4 value: $value');
  }
}
