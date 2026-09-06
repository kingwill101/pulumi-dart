import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes type of rule.
enum RuleType implements pulumi.PulumiEnum<String> {
  matchRule("MatchRule"),
  rateLimitRule("RateLimitRule");

  const RuleType(this.wireValue);
  @override
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
