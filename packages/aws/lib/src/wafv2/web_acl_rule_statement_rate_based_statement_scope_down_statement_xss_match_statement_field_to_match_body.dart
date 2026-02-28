// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody {
  /// What WAF should do if the body is larger than WAF can inspect. WAF does not support inspecting the entire contents of the body of a web request when the body exceeds 8 KB (8192 bytes). Only the first 8 KB of the request body are forwarded to WAF by the underlying host service. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  final String? oversizeHandling;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody].
  /// [oversizeHandling] What WAF should do if the body is larger than WAF can inspect. WAF does not support inspecting the entire contents of the body of a web request when the body exceeds 8 KB (8192 bytes). Only the first 8 KB of the request body are forwarded to WAF by the underlying host service. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oversizeHandlingValue = oversizeHandling;
    if (oversizeHandlingValue != null) {
      map['oversizeHandling'] = oversizeHandlingValue;
    }
    return map;
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementXssMatchStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
