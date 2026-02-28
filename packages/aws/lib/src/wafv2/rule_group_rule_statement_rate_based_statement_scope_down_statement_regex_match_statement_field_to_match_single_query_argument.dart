// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
