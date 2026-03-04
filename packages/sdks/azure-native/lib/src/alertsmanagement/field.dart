/// Field for a given condition.
enum Field {
  valueSeverity("Severity"),
  valueMonitorService("MonitorService"),
  valueMonitorCondition("MonitorCondition"),
  valueSignalType("SignalType"),
  valueTargetResourceType("TargetResourceType"),
  valueTargetResource("TargetResource"),
  valueTargetResourceGroup("TargetResourceGroup"),
  valueAlertRuleId("AlertRuleId"),
  valueAlertRuleName("AlertRuleName"),
  valueDescription("Description"),
  valueAlertContext("AlertContext");

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
