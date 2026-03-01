/// Describes type of rule.
enum RuleType {
  valueMatchRule("MatchRule"),
  valueRateLimitRule("RateLimitRule");

  const RuleType(this.value);
  final String value;

  static RuleType fromValue(String value) {
    for (final item in RuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleType value: $value');
  }
}

