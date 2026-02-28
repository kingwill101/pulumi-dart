// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader {
  /// A friendly name of the rule group.
  final String name;

  /// The value of the custom header.
  final String value;

  /// Creates a new [RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader].
  /// [name] A friendly name of the rule group.
  /// [value] The value of the custom header.
  RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleActionChallengeCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
