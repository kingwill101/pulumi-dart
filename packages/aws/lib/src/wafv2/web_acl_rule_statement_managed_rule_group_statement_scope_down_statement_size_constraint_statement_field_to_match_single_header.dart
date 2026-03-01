// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
