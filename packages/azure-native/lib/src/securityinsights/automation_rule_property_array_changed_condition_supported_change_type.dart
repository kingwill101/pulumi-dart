enum AutomationRulePropertyArrayChangedConditionSupportedChangeType {
  valueAdded("Added");

  const AutomationRulePropertyArrayChangedConditionSupportedChangeType(this.value);
  final String value;

  static AutomationRulePropertyArrayChangedConditionSupportedChangeType fromValue(String value) {
    for (final item in AutomationRulePropertyArrayChangedConditionSupportedChangeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyArrayChangedConditionSupportedChangeType value: $value');
  }
}

