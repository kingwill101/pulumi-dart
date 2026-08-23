// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleUnlessNumberExpressionEvaluate {
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String> attribute;

  /// Creates a new [RuleSetRuleUnlessNumberExpressionEvaluate].
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  const RuleSetRuleUnlessNumberExpressionEvaluate({
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
    };
  }

  factory RuleSetRuleUnlessNumberExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleUnlessNumberExpressionEvaluate(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
