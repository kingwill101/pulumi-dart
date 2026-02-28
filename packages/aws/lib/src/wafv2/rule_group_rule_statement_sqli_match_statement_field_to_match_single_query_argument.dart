// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}

