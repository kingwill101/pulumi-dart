// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchUriFragment({
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

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchUriFragment.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null
          ? null
          : map['fallbackBehavior'] as String,
    );
  }
}
