// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleQueryArgument {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
