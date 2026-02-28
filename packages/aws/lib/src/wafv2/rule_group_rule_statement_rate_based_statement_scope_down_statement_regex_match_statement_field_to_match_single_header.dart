// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleHeader {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleHeader].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleHeader.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementRegexMatchStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
