/// Required
enum RuleActionGameservicesV1beta {
  noAction("NO_ACTION"),
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG");

  const RuleActionGameservicesV1beta(this.value);
  final String value;

  static RuleActionGameservicesV1beta fromValue(String value) {
    for (final item in RuleActionGameservicesV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleActionGameservicesV1beta value: $value');
  }
}
