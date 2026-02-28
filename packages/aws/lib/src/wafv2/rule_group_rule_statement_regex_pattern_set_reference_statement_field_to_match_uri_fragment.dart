// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': ?fallbackBehavior,
    };
  }

  factory RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null ? null : map['fallbackBehavior'] as String,
    );
  }
}

