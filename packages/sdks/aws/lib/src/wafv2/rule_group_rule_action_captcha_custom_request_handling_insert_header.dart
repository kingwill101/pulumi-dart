// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader {
  /// Friendly name of the rule group.
  final pulumi.Input<String> name;
  /// Value of the custom header.
  final pulumi.Input<String> value;

  /// Creates a new [RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader].
  /// [name] Friendly name of the rule group.
  /// [value] Value of the custom header.
  const RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionCaptchaCustomRequestHandlingInsertHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
