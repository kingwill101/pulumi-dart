/// Required
enum RuleActionGameservicesV1 {
  noAction("NO_ACTION"),
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG");

  const RuleActionGameservicesV1(this.value);
  final String value;

  static RuleActionGameservicesV1 fromValue(String value) {
    for (final item in RuleActionGameservicesV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleActionGameservicesV1 value: $value');
  }
}
