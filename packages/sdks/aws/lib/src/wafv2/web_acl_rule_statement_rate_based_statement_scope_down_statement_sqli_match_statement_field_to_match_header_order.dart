// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder {
  /// Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  final String oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder].
  /// [oversizeHandling] Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder({
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oversizeHandling': oversizeHandling,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchHeaderOrder(
      oversizeHandling: map['oversizeHandling'] as String,
    );
  }
}

