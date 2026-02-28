// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementXssMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
