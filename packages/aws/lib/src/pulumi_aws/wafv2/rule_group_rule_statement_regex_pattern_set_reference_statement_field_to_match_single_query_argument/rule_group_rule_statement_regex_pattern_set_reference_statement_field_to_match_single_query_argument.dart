// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchSingleQueryArgument(
      name: map['name'] as String,
    );
  }
}
