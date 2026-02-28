// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleHeader {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleHeader].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleHeader.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementByteMatchStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
