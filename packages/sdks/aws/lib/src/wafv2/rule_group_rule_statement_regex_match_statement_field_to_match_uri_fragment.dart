// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementRegexMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  RuleGroupRuleStatementRegexMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': ?fallbackBehavior,
    };
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchUriFragment.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null ? null : map['fallbackBehavior'] as String,
    );
  }
}

