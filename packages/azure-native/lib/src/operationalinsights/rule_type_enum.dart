/// SummaryRules rule type: User.
enum RuleTypeEnum {
  valueUser("User");

  const RuleTypeEnum(this.value);
  final String value;

  static RuleTypeEnum fromValue(String value) {
    for (final item in RuleTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleTypeEnum value: $value');
  }
}

