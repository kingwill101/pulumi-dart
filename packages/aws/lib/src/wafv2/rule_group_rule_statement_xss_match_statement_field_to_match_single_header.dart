// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
