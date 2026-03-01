// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stage_on_success_condition_rule.dart';

class PipelineStageOnSuccessCondition {
  /// The action to be done when the condition is met. For example, rolling back an execution for a failure condition. Possible values are `ROLLBACK`, `FAIL`, `RETRY` and `SKIP`.
  final String? result;

  /// The rules that make up the condition. Defined as a `rule` block below.
  final List<PipelineStageOnSuccessConditionRule> rules;

  /// Creates a new [PipelineStageOnSuccessCondition].
  /// [result] The action to be done when the condition is met. For example, rolling back an execution for a failure condition. Possible values are `ROLLBACK`, `FAIL`, `RETRY` and `SKIP`.
  /// [rules] The rules that make up the condition. Defined as a `rule` block below.
  PipelineStageOnSuccessCondition({this.result, required this.rules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
      'rules':
          pulumi.Input.encodeList<
            PipelineStageOnSuccessConditionRule,
            Map<String, dynamic>
          >(rules, (value) => value.toMap()),
    };
  }

  factory PipelineStageOnSuccessCondition.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnSuccessCondition(
      result: map['result'] == null ? null : map['result'] as String,
      rules: pulumi.Input.decodeList<PipelineStageOnSuccessConditionRule>(
        map['rules'],
        (value) => PipelineStageOnSuccessConditionRule.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
