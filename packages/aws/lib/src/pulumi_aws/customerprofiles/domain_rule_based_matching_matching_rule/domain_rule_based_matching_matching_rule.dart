// ignore_for_file: unused_element, unnecessary_cast

class DomainRuleBasedMatchingMatchingRule {
  /// A single rule level of the `match_rules`. Configures how the rule-based matching process should match profiles.
  final List<String> rules;

  DomainRuleBasedMatchingMatchingRule({
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rules'] = rules;
    return map;
  }

  factory DomainRuleBasedMatchingMatchingRule.fromMap(
      Map<String, dynamic> map) {
    return DomainRuleBasedMatchingMatchingRule(
      rules: (map['rules'] as List).cast<String>(),
    );
  }
}
