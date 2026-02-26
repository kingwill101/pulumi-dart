// ignore_for_file: unused_element, unnecessary_cast

import '../pipeline_stage_on_success_condition/pipeline_stage_on_success_condition.dart';

class PipelineStageOnSuccess {
  /// The conditions that are success conditions. Defined as a <span pulumi-lang-nodejs="`condition`" pulumi-lang-dotnet="`Condition`" pulumi-lang-go="`condition`" pulumi-lang-python="`condition`" pulumi-lang-yaml="`condition`" pulumi-lang-java="`condition`">`condition`</span> block below.
  final PipelineStageOnSuccessCondition condition;

  PipelineStageOnSuccess({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['condition'] = condition.toMap();
    return map;
  }

  factory PipelineStageOnSuccess.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnSuccess(
      condition: PipelineStageOnSuccessCondition.fromMap(
          (map['condition'] as Map).cast<String, dynamic>()),
    );
  }
}
