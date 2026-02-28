/// Required. Threat action override. For some threat types, only a subset of actions applies.
enum ThreatOverrideAction {
  threatActionUnspecified("THREAT_ACTION_UNSPECIFIED"),
  defaultAction("DEFAULT_ACTION"),
  allow("ALLOW"),
  alert("ALERT"),
  deny("DENY");

  const ThreatOverrideAction(this.value);
  final String value;

  static ThreatOverrideAction fromValue(String value) {
    for (final item in ThreatOverrideAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ThreatOverrideAction value: $value');
  }
}
