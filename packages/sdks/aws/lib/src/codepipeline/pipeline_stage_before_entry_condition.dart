// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stage_before_entry_condition_rule.dart';

class PipelineStageBeforeEntryCondition {
  /// The action to be done when the condition is met. For example, rolling back an execution for a failure condition. Possible values are `ROLLBACK`, `FAIL`, `RETRY` and `SKIP`.
  final pulumi.Input<String>? result;
  /// The rules that make up the condition. Defined as a `rule` block below.
  final pulumi.Input<List<PipelineStageBeforeEntryConditionRule>> rules;

  /// Creates a new [PipelineStageBeforeEntryCondition].
  /// [result] The action to be done when the condition is met. For example, rolling back an execution for a failure condition. Possible values are `ROLLBACK`, `FAIL`, `RETRY` and `SKIP`.
  /// [rules] The rules that make up the condition. Defined as a `rule` block below.
  const PipelineStageBeforeEntryCondition({
    this.result,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': ?result,
      'rules': pulumi.Input.mapInputValue<List<PipelineStageBeforeEntryConditionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PipelineStageBeforeEntryConditionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PipelineStageBeforeEntryCondition.fromMap(Map<String, dynamic> map) {
    return PipelineStageBeforeEntryCondition(
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineStageBeforeEntryConditionRule>(map['rules']!, (value) => PipelineStageBeforeEntryConditionRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
