// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': ?fallbackBehavior,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null ? null : map['fallbackBehavior'] as String,
    );
  }
}

