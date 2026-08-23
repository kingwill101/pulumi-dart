// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleConditionIpExpressionEvaluate {
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String> attribute;

  /// Creates a new [RuleSetRuleConditionIpExpressionEvaluate].
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  const RuleSetRuleConditionIpExpressionEvaluate({
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
    };
  }

  factory RuleSetRuleConditionIpExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionIpExpressionEvaluate(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
