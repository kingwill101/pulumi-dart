// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_policy_statement_condition_boolean_expression_evaluate_analysis.dart';
import 'traffic_policy_policy_statement_condition_boolean_expression_evaluate_is_in_address_list.dart';

class TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate {
  /// Analysis result to evaluate. See `policy_statement.condition.string_expression.evaluate.analysis` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateAnalysis?>? analysis;
  /// Address list membership check. See `isInAddressList` Block below.
  final pulumi.Input<TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList?>? isInAddressList;

  /// Creates a new [TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate].
  /// [analysis] Analysis result to evaluate. See `policy_statement.condition.string_expression.evaluate.analysis` Block below.
  /// [isInAddressList] Address list membership check. See `isInAddressList` Block below.
  const TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate({
    this.analysis,
    this.isInAddressList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysis': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateAnalysis, Map<String, dynamic>>(analysis, (value) => value.toMap()),
      'isInAddressList': ?pulumi.Input.mapOptionalInputValue<TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList, Map<String, dynamic>>(isInAddressList, (value) => value.toMap()),
    };
  }

  factory TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluate(
      analysis: (() { final guardedValue = map['analysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isInAddressList: (() { final guardedValue = map['isInAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
