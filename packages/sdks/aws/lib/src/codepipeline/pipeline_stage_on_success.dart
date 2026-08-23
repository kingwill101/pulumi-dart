// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stage_on_success_condition.dart';

class PipelineStageOnSuccess {
  /// The conditions that are success conditions. Defined as a `condition` block below.
  final pulumi.Input<PipelineStageOnSuccessCondition> condition;

  /// Creates a new [PipelineStageOnSuccess].
  /// [condition] The conditions that are success conditions. Defined as a `condition` block below.
  const PipelineStageOnSuccess({
    required this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': pulumi.Input.mapInputValue<PipelineStageOnSuccessCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
    };
  }

  factory PipelineStageOnSuccess.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnSuccess(
      condition: pulumi.Input.fromValue(PipelineStageOnSuccessCondition.fromMap((map['condition']! as Map).cast<String, dynamic>())),
    );
  }
}
