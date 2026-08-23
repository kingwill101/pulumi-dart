// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleConditionNumberExpressionEvaluate {
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String> attribute;

  /// Creates a new [RuleSetRuleConditionNumberExpressionEvaluate].
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  const RuleSetRuleConditionNumberExpressionEvaluate({
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
    };
  }

  factory RuleSetRuleConditionNumberExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionNumberExpressionEvaluate(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
