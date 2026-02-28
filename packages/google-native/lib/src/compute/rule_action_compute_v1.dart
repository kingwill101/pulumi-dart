/// This is deprecated and has no effect. Do not use.
enum RuleActionComputeV1 {
  allow("ALLOW"),
  allowWithLog("ALLOW_WITH_LOG"),
  deny("DENY"),
  denyWithLog("DENY_WITH_LOG"),
  log("LOG"),
  noAction("NO_ACTION");

  const RuleActionComputeV1(this.value);
  final String value;

  static RuleActionComputeV1 fromValue(String value) {
    for (final item in RuleActionComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleActionComputeV1 value: $value');
  }
}
