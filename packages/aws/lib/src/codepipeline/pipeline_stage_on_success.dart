// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_stage_on_success_condition.dart';

class PipelineStageOnSuccess {
  /// The conditions that are success conditions. Defined as a `condition` block below.
  final PipelineStageOnSuccessCondition condition;

  /// Creates a new [PipelineStageOnSuccess].
  /// [condition] The conditions that are success conditions. Defined as a `condition` block below.
  PipelineStageOnSuccess({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition.toMap(),
    };
  }

  factory PipelineStageOnSuccess.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnSuccess(
      condition: PipelineStageOnSuccessCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
    );
  }
}

