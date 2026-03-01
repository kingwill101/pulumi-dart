enum AutomationRulePropertyChangedConditionSupportedPropertyType {
  valueIncidentSeverity("IncidentSeverity"),
  valueIncidentStatus("IncidentStatus"),
  valueIncidentOwner("IncidentOwner");

  const AutomationRulePropertyChangedConditionSupportedPropertyType(this.value);
  final String value;

  static AutomationRulePropertyChangedConditionSupportedPropertyType fromValue(String value) {
    for (final item in AutomationRulePropertyChangedConditionSupportedPropertyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyChangedConditionSupportedPropertyType value: $value');
  }
}

