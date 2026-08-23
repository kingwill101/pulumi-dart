// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleUnlessIpExpressionEvaluate {
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String> attribute;

  /// Creates a new [RuleSetRuleUnlessIpExpressionEvaluate].
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  const RuleSetRuleUnlessIpExpressionEvaluate({
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
    };
  }

  factory RuleSetRuleUnlessIpExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleUnlessIpExpressionEvaluate(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
