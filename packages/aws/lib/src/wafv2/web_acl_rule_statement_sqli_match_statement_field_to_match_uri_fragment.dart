// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementSqliMatchStatementFieldToMatchUriFragment {
  /// What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  final String? fallbackBehavior;

  /// Creates a new [WebAclRuleStatementSqliMatchStatementFieldToMatchUriFragment].
  /// [fallbackBehavior] What AWS WAF should do if it fails to completely parse the JSON body. Valid values are `MATCH` (default) and `NO_MATCH`.
  WebAclRuleStatementSqliMatchStatementFieldToMatchUriFragment({
    this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fallbackBehavior': ?fallbackBehavior};
  }

  factory WebAclRuleStatementSqliMatchStatementFieldToMatchUriFragment.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementSqliMatchStatementFieldToMatchUriFragment(
      fallbackBehavior: map['fallbackBehavior'] == null
          ? null
          : map['fallbackBehavior'] as String,
    );
  }
}
