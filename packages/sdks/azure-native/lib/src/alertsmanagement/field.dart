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

  const Field(this.value);
  final String value;

  static Field fromValue(String value) {
    for (final item in Field.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Field value: $value');
  }
}

