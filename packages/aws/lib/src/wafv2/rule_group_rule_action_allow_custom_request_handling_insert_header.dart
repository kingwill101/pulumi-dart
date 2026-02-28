// ignore_for_file: unused_element, unnecessary_cast


class RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader {
  /// A friendly name of the rule group.
  final String name;
  /// The value of the custom header.
  final String value;

  /// Creates a new [RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader].
  /// [name] A friendly name of the rule group.
  /// [value] The value of the custom header.
  RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

