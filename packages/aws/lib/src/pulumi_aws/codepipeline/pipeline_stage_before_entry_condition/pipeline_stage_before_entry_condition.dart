// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_stage_before_entry_condition_rule/pipeline_stage_before_entry_condition_rule.dart';

class PipelineStageBeforeEntryCondition {
  /// The action to be done when the condition is met. For example, rolling back an execution for a failure condition. Possible values are `ROLLBACK`, `FAIL`, `RETRY` and `SKIP`.
  final String? result;

  /// The rules that make up the condition. Defined as a <span pulumi-lang-nodejs="`rule`" pulumi-lang-dotnet="`Rule`" pulumi-lang-go="`rule`" pulumi-lang-python="`rule`" pulumi-lang-yaml="`rule`" pulumi-lang-java="`rule`">`rule`</span> block below.
  final List<PipelineStageBeforeEntryConditionRule> rules;

  PipelineStageBeforeEntryCondition({
    this.result,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resultValue = result;
    if (resultValue != null) {
      map['result'] = resultValue;
    }
    map['rules'] = Input.encodeList<PipelineStageBeforeEntryConditionRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory PipelineStageBeforeEntryCondition.fromMap(Map<String, dynamic> map) {
    return PipelineStageBeforeEntryCondition(
      result: map['result'] == null ? null : map['result'] as String,
      rules: Input.decodeList<PipelineStageBeforeEntryConditionRule>(
          map['rules'],
          (value) => PipelineStageBeforeEntryConditionRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
