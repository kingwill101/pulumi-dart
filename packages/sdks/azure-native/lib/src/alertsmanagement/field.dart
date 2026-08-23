/// Field for a given condition.
enum Field {
  severity("Severity"),
  monitorService("MonitorService"),
  monitorCondition("MonitorCondition"),
  signalType("SignalType"),
  targetResourceType("TargetResourceType"),
  targetResource("TargetResource"),
  targetResourceGroup("TargetResourceGroup"),
  alertRuleId("AlertRuleId"),
  alertRuleName("AlertRuleName"),
  description("Description"),
  alertContext("AlertContext");

  const Field(this.wireValue);
  final String wireValue;

  static Field fromValue(String value) {
    for (final item in Field.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Field value: $value');
  }
}
