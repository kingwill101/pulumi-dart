// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_stage_on_failure_condition_rule/pipeline_stage_on_failure_condition_rule.dart';

class PipelineStageOnFailureCondition {
  /// The action to be done when the condition is met. For example, rolling back an execution for a failure condition. Possible values are `ROLLBACK`, `FAIL`, `RETRY` and `SKIP`.
  final String? result;

  /// The rules that make up the condition. Defined as a <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> block below.
  final List<PipelineStageOnFailureConditionRule> rules;

  PipelineStageOnFailureCondition({
    this.result,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resultValue = result;
    if (resultValue != null) {
      map['result'] = resultValue;
    }
    map['rules'] = Input.encodeList<PipelineStageOnFailureConditionRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory PipelineStageOnFailureCondition.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnFailureCondition(
      result: map['result'] == null ? null : map['result'] as String,
      rules: Input.decodeList<PipelineStageOnFailureConditionRule>(
          map['rules'],
          (value) => PipelineStageOnFailureConditionRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
