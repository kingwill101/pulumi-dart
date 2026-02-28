// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder {
  /// Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  final String oversizeHandling;

  /// Creates a new [WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder].
  /// [oversizeHandling] Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder({
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oversizeHandling'] = oversizeHandling;
    return map;
  }

  factory WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementXssMatchStatementFieldToMatchHeaderOrder(
      oversizeHandling: map['oversizeHandling'] as String,
    );
  }
}
