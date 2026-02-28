// ignore_for_file: unused_element, unnecessary_cast

import 'pipeline_ready_condition_response.dart';
import 'targets_present_condition_response.dart';
import 'targets_type_condition_response.dart';

/// PipelineCondition contains all conditions relevant to a Delivery Pipeline.
class PipelineConditionResponse {
  /// Details around the Pipeline's overall status.
  final PipelineReadyConditionResponse pipelineReadyCondition;

  /// Details around targets enumerated in the pipeline.
  final TargetsPresentConditionResponse targetsPresentCondition;

  /// Details on the whether the targets enumerated in the pipeline are of the same type.
  final TargetsTypeConditionResponse targetsTypeCondition;

  /// Creates a new [PipelineConditionResponse].
  /// [pipelineReadyCondition] Details around the Pipeline's overall status.
  /// [targetsPresentCondition] Details around targets enumerated in the pipeline.
  /// [targetsTypeCondition] Details on the whether the targets enumerated in the pipeline are of the same type.
  PipelineConditionResponse({
    required this.pipelineReadyCondition,
    required this.targetsPresentCondition,
    required this.targetsTypeCondition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pipelineReadyCondition'] = pipelineReadyCondition.toMap();
    map['targetsPresentCondition'] = targetsPresentCondition.toMap();
    map['targetsTypeCondition'] = targetsTypeCondition.toMap();
    return map;
  }

  factory PipelineConditionResponse.fromMap(Map<String, dynamic> map) {
    return PipelineConditionResponse(
      pipelineReadyCondition: PipelineReadyConditionResponse.fromMap(
          (map['pipelineReadyCondition'] as Map).cast<String, dynamic>()),
      targetsPresentCondition: TargetsPresentConditionResponse.fromMap(
          (map['targetsPresentCondition'] as Map).cast<String, dynamic>()),
      targetsTypeCondition: TargetsTypeConditionResponse.fromMap(
          (map['targetsTypeCondition'] as Map).cast<String, dynamic>()),
    );
  }
}
