// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument {
  /// Name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument].
  /// [name] Name of the query header to inspect. This setting must be provided as lower case characters.
  WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
