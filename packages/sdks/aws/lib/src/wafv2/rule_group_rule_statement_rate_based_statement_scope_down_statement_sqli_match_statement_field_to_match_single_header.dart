// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}

