// ignore_for_file: unused_element, unnecessary_cast

class DomainRuleBasedMatchingMatchingRule {
  /// A single rule level of the <span pulumi-lang-nodejs="`matchRules`" pulumi-lang-dotnet="`MatchRules`" pulumi-lang-go="`matchRules`" pulumi-lang-python="`match_rules`" pulumi-lang-yaml="`matchRules`" pulumi-lang-java="`matchRules`">`match_rules`</span>. Configures how the rule-based matching process should match profiles.
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
