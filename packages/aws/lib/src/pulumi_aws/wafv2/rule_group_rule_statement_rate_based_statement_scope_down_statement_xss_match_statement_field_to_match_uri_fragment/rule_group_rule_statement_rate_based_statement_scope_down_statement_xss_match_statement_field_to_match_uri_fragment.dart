// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fallbackBehaviorValue = fallbackBehavior;
    if (fallbackBehaviorValue != null) {
      map['fallbackBehavior'] = fallbackBehaviorValue;
    }
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null
          ? null
          : map['fallbackBehavior'] as String,
    );
  }
}
