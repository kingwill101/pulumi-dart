// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': ?fallbackBehavior,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null ? null : map['fallbackBehavior'] as String,
    );
  }
}

