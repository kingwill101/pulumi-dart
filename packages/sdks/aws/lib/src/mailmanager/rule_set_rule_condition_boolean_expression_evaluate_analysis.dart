// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleConditionBooleanExpressionEvaluateAnalysis {
  /// ARN of the Mail Manager Add On.
  final pulumi.Input<String> analyzer;
  /// Result field returned by the Add On. Must contain between 1 and 256 characters.
  final pulumi.Input<String> resultField;

  /// Creates a new [RuleSetRuleConditionBooleanExpressionEvaluateAnalysis].
  /// [analyzer] ARN of the Mail Manager Add On.
  /// [resultField] Result field returned by the Add On. Must contain between 1 and 256 characters.
  const RuleSetRuleConditionBooleanExpressionEvaluateAnalysis({
    required this.analyzer,
    required this.resultField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzer': analyzer,
      'resultField': resultField,
    };
  }

  factory RuleSetRuleConditionBooleanExpressionEvaluateAnalysis.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionBooleanExpressionEvaluateAnalysis(
      analyzer: pulumi.Input.fromValue(map['analyzer'] as String),
      resultField: pulumi.Input.fromValue(map['resultField'] as String),
    );
  }
}
