// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment({
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

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSqliMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null
          ? null
          : map['fallbackBehavior'] as String,
    );
  }
}
