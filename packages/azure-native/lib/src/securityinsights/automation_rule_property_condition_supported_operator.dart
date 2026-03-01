enum AutomationRulePropertyConditionSupportedOperator {
  valueEquals("Equals"),
  valueNotEquals("NotEquals"),
  valueContains("Contains"),
  valueNotContains("NotContains"),
  valueStartsWith("StartsWith"),
  valueNotStartsWith("NotStartsWith"),
  valueEndsWith("EndsWith"),
  valueNotEndsWith("NotEndsWith");

  const AutomationRulePropertyConditionSupportedOperator(this.value);
  final String value;

  static AutomationRulePropertyConditionSupportedOperator fromValue(String value) {
    for (final item in AutomationRulePropertyConditionSupportedOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutomationRulePropertyConditionSupportedOperator value: $value');
  }
}

