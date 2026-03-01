// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': ?fallbackBehavior,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null ? null : map['fallbackBehavior'] as String,
    );
  }
}

