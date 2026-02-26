// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader {
  /// The name of the query header to inspect. This setting must be provided as lower case characters.
  final String name;

  RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementXssMatchStatementFieldToMatchSingleHeader(
      name: map['name'] as String,
    );
  }
}
