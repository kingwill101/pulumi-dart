/// The rule type of the governance rule, defines the source of the rule e.g. Integrated
enum GovernanceRuleType {
  valueIntegrated("Integrated"),
  valueServiceNow("ServiceNow");

  const GovernanceRuleType(this.value);
  final String value;

  static GovernanceRuleType fromValue(String value) {
    for (final item in GovernanceRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GovernanceRuleType value: $value');
  }
}

