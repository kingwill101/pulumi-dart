// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis {
  /// ARN of the analyzer performing the analysis.
  final pulumi.Input<String> analyzer;
  /// Result field returned in the analysis.
  final pulumi.Input<String> resultField;

  /// Creates a new [TrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis].
  /// [analyzer] ARN of the analyzer performing the analysis.
  /// [resultField] Result field returned in the analysis.
  const TrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis({
    required this.analyzer,
    required this.resultField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyzer': analyzer,
      'resultField': resultField,
    };
  }

  factory TrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis(
      analyzer: pulumi.Input.fromValue(map['analyzer'] as String),
      resultField: pulumi.Input.fromValue(map['resultField'] as String),
    );
  }
}
