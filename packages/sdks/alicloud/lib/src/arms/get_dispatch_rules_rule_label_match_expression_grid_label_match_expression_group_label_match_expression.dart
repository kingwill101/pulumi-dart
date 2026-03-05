// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression {
  /// The key of the tag of the dispatch rule.
  final pulumi.Input<String> key;
  /// The operator used in the dispatch rule.
  final pulumi.Input<String> operator;
  /// The value of the tag.
  final pulumi.Input<String> value;

  /// Creates a new [GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression].
  /// [key] The key of the tag of the dispatch rule.
  /// [operator] The operator used in the dispatch rule.
  /// [value] The value of the tag.
  GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression({
    required this.key,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'value': value,
    };
  }

  factory GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression(
      key: pulumi.Input.fromValue(map['key'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

