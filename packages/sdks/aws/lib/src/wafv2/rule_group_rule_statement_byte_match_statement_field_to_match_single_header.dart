// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleStatementByteMatchStatementFieldToMatchSingleHeader {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  /// Creates a new [RuleGroupRuleStatementByteMatchStatementFieldToMatchSingleHeader].
  /// [name] The name of the query header to inspect. This setting must be provided as lower case characters.
  RuleGroupRuleStatementByteMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RuleGroupRuleStatementByteMatchStatementFieldToMatchSingleHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementByteMatchStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}

