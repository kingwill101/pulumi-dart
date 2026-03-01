// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody {
  /// What WAF should do if the body is larger than WAF can inspect. WAF does not support inspecting the entire contents of the body of a web request when the body exceeds 8 KB (8192 bytes). Only the first 8 KB of the request body are forwarded to WAF by the underlying host service. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  final String? oversizeHandling;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody].
  /// [oversizeHandling] What WAF should do if the body is larger than WAF can inspect. WAF does not support inspecting the entire contents of the body of a web request when the body exceeds 8 KB (8192 bytes). Only the first 8 KB of the request body are forwarded to WAF by the underlying host service. Valid values: `CONTINUE`, `MATCH`, `NO_MATCH`.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody({
    this.oversizeHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'oversizeHandling': ?oversizeHandling};
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexPatternSetReferenceStatementFieldToMatchBody(
      oversizeHandling: map['oversizeHandling'] == null
          ? null
          : map['oversizeHandling'] as String,
    );
  }
}
