// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
