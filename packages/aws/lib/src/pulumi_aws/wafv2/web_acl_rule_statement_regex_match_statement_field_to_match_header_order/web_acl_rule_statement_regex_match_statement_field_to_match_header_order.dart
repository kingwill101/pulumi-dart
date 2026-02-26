// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRegexMatchStatementFieldToMatchHeaderOrder {
  /// Oversize handling tells AWS WAF what to do with a web request when the request component that the rule inspects is over the limits. Valid values include the following: `CONTINUE`, `MATCH`, `NO_MATCH`. See the AWS [documentation](https://docs.aws.amazon.com/waf/latest/developerguide/waf-rule-statement-oversize-handling.html) for more information.
  final String oversizeHandling;

  WebAclRuleStatementRegexMatchStatementFieldToMatchHeaderOrder({
    required this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oversizeHandling'] = oversizeHandling;
    return map;
  }

  factory WebAclRuleStatementRegexMatchStatementFieldToMatchHeaderOrder.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRegexMatchStatementFieldToMatchHeaderOrder(
      oversizeHandling: map['oversizeHandling'] as String,
    );
  }
}
