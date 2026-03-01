// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
