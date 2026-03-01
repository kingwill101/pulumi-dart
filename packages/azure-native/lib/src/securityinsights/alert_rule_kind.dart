/// The alert rule kind
enum AlertRuleKind {
  valueScheduled("Scheduled"),
  valueMicrosoftSecurityIncidentCreation("MicrosoftSecurityIncidentCreation"),
  valueFusion("Fusion");

  const AlertRuleKind(this.value);
  final String value;

  static AlertRuleKind fromValue(String value) {
    for (final item in AlertRuleKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertRuleKind value: $value');
  }
}

