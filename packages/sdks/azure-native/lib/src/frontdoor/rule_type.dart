/// Describes type of rule.
enum RuleType {
  matchRule("MatchRule"),
  rateLimitRule("RateLimitRule");

  const RuleType(this.wireValue);
  final String wireValue;

  static RuleType fromValue(String value) {
    for (final item in RuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleType value: $value');
  }
}
