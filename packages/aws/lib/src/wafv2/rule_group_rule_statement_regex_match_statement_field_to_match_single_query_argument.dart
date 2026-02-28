// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
