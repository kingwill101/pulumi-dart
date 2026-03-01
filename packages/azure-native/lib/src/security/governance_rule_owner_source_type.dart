/// The owner type for the governance rule owner source
enum GovernanceRuleOwnerSourceType {
  valueByTag("ByTag"),
  valueManually("Manually");

  const GovernanceRuleOwnerSourceType(this.value);
  final String value;

  static GovernanceRuleOwnerSourceType fromValue(String value) {
    for (final item in GovernanceRuleOwnerSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GovernanceRuleOwnerSourceType value: $value');
  }
}

