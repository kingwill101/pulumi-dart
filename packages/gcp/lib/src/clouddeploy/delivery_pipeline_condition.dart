// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_pipeline_condition_pipeline_ready_condition.dart';
import 'delivery_pipeline_condition_targets_present_condition.dart';
import 'delivery_pipeline_condition_targets_type_condition.dart';

class DeliveryPipelineCondition {
  /// Details around the Pipeline's overall status.
  final List<DeliveryPipelineConditionPipelineReadyCondition>?
      pipelineReadyConditions;

  /// Details around targets enumerated in the pipeline.
  final List<DeliveryPipelineConditionTargetsPresentCondition>?
      targetsPresentConditions;

  /// Details on the whether the targets enumerated in the pipeline are of the same type.
  final List<DeliveryPipelineConditionTargetsTypeCondition>?
      targetsTypeConditions;

  /// Creates a new [DeliveryPipelineCondition].
  /// [pipelineReadyConditions] Details around the Pipeline's overall status.
  /// [targetsPresentConditions] Details around targets enumerated in the pipeline.
  /// [targetsTypeConditions] Details on the whether the targets enumerated in the pipeline are of the same type.
  DeliveryPipelineCondition({
    this.pipelineReadyConditions,
    this.targetsPresentConditions,
    this.targetsTypeConditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pipelineReadyConditionsValue = pipelineReadyConditions;
    if (pipelineReadyConditionsValue != null) {
      map['pipelineReadyConditions'] = pulumi.Input.encodeList<
              DeliveryPipelineConditionPipelineReadyCondition,
              Map<String, dynamic>>(
          pipelineReadyConditionsValue, (value) => value.toMap());
    }
    final targetsPresentConditionsValue = targetsPresentConditions;
    if (targetsPresentConditionsValue != null) {
      map['targetsPresentConditions'] = pulumi.Input.encodeList<
              DeliveryPipelineConditionTargetsPresentCondition,
              Map<String, dynamic>>(
          targetsPresentConditionsValue, (value) => value.toMap());
    }
    final targetsTypeConditionsValue = targetsTypeConditions;
    if (targetsTypeConditionsValue != null) {
      map['targetsTypeConditions'] = pulumi.Input.encodeList<
              DeliveryPipelineConditionTargetsTypeCondition,
              Map<String, dynamic>>(
          targetsTypeConditionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeliveryPipelineCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryPipelineCondition(
      pipelineReadyConditions: map['pipelineReadyConditions'] == null
          ? null
          : pulumi.Input.decodeList<
                  DeliveryPipelineConditionPipelineReadyCondition>(
              map['pipelineReadyConditions'],
              (value) =>
                  DeliveryPipelineConditionPipelineReadyCondition.fromMap(
                      (value as Map).cast<String, dynamic>())),
      targetsPresentConditions: map['targetsPresentConditions'] == null
          ? null
          : pulumi.Input.decodeList<
                  DeliveryPipelineConditionTargetsPresentCondition>(
              map['targetsPresentConditions'],
              (value) =>
                  DeliveryPipelineConditionTargetsPresentCondition.fromMap(
                      (value as Map).cast<String, dynamic>())),
      targetsTypeConditions: map['targetsTypeConditions'] == null
          ? null
          : pulumi.Input.decodeList<
                  DeliveryPipelineConditionTargetsTypeCondition>(
              map['targetsTypeConditions'],
              (value) => DeliveryPipelineConditionTargetsTypeCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
