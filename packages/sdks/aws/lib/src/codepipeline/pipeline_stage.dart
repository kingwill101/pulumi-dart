// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stage_action.dart';
import 'pipeline_stage_before_entry.dart';
import 'pipeline_stage_on_failure.dart';
import 'pipeline_stage_on_success.dart';

class PipelineStage {
  /// The action(s) to include in the stage. Defined as an `action` block below
  final pulumi.Input<List<PipelineStageAction>> actions;
  /// The method to use when a stage allows entry. For example, configuring this field for conditions will allow entry to the stage when the conditions are met.
  final pulumi.Input<PipelineStageBeforeEntry>? beforeEntry;
  /// The name of the stage.
  final pulumi.Input<String> name;
  /// The method to use when a stage has not completed successfully. For example, configuring this field for rollback will roll back a failed stage automatically to the last successful pipeline execution in the stage.
  final pulumi.Input<PipelineStageOnFailure>? onFailure;
  /// The method to use when a stage has succeeded. For example, configuring this field for conditions will allow the stage to succeed when the conditions are met.
  final pulumi.Input<PipelineStageOnSuccess>? onSuccess;

  /// Creates a new [PipelineStage].
  /// [actions] The action(s) to include in the stage. Defined as an `action` block below
  /// [beforeEntry] The method to use when a stage allows entry. For example, configuring this field for conditions will allow entry to the stage when the conditions are met.
  /// [name] The name of the stage.
  /// [onFailure] The method to use when a stage has not completed successfully. For example, configuring this field for rollback will roll back a failed stage automatically to the last successful pipeline execution in the stage.
  /// [onSuccess] The method to use when a stage has succeeded. For example, configuring this field for conditions will allow the stage to succeed when the conditions are met.
  const PipelineStage({
    required this.actions,
    this.beforeEntry,
    required this.name,
    this.onFailure,
    this.onSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<PipelineStageAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<PipelineStageAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'beforeEntry': ?pulumi.Input.mapOptionalInputValue<PipelineStageBeforeEntry, Map<String, dynamic>>(beforeEntry, (value) => value.toMap()),
      'name': name,
      'onFailure': ?pulumi.Input.mapOptionalInputValue<PipelineStageOnFailure, Map<String, dynamic>>(onFailure, (value) => value.toMap()),
      'onSuccess': ?pulumi.Input.mapOptionalInputValue<PipelineStageOnSuccess, Map<String, dynamic>>(onSuccess, (value) => value.toMap()),
    };
  }

  factory PipelineStage.fromMap(Map<String, dynamic> map) {
    return PipelineStage(
      actions: pulumi.Input.fromValue(pulumi.Input.decodeList<PipelineStageAction>(map['actions']!, (value) => PipelineStageAction.fromMap((value as Map).cast<String, dynamic>()))),
      beforeEntry: (() { final guardedValue = map['beforeEntry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStageBeforeEntry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onFailure: (() { final guardedValue = map['onFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStageOnFailure.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      onSuccess: (() { final guardedValue = map['onSuccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineStageOnSuccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

