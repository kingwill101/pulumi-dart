// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader {
  /// Friendly name of the rule group.
  final pulumi.Input<String> name;
  /// Value of the custom header.
  final pulumi.Input<String> value;

  /// Creates a new [RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader].
  /// [name] Friendly name of the rule group.
  /// [value] Value of the custom header.
  const RuleGroupRuleActionAllowCustomRequestHandlingInsertHeader({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
