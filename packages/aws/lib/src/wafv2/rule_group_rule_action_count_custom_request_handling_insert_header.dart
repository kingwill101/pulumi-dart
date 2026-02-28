// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleActionCountCustomRequestHandlingInsertHeader {
  /// A friendly name of the rule group.
  final String name;

  /// The value of the custom header.
  final String value;

  /// Creates a new [RuleGroupRuleActionCountCustomRequestHandlingInsertHeader].
  /// [name] A friendly name of the rule group.
  /// [value] The value of the custom header.
  RuleGroupRuleActionCountCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory RuleGroupRuleActionCountCustomRequestHandlingInsertHeader.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleActionCountCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
