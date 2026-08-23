// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition_string_expression_evaluate_analysis.dart';

class TrafficPolicyPolicyStatementConditionStringExpressionEvaluate {
  /// Analysis result to evaluate. See `policy_statement.condition.string_expression.evaluate.analysis` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis>? analysis;
  final pulumi.Input<String>? attribute;

  /// Creates a new [TrafficPolicyPolicyStatementConditionStringExpressionEvaluate].
  /// [analysis] Analysis result to evaluate. See `policy_statement.condition.string_expression.evaluate.analysis` Block below.
  /// [attribute] Optional.
  const TrafficPolicyPolicyStatementConditionStringExpressionEvaluate({
    this.analysis,
    this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'attribute': ?attribute,
    };
  }

  factory TrafficPolicyPolicyStatementConditionStringExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionStringExpressionEvaluate(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionStringExpressionEvaluateAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      attribute: (() { final guardedValue = map['attribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
