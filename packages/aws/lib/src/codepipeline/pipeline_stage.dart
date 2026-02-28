// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_stage_action.dart';
import 'pipeline_stage_before_entry.dart';
import 'pipeline_stage_on_failure.dart';
import 'pipeline_stage_on_success.dart';

class PipelineStage {
  /// The action(s) to include in the stage. Defined as an `action` block below
  final List<PipelineStageAction> actions;
  /// The method to use when a stage allows entry. For example, configuring this field for conditions will allow entry to the stage when the conditions are met.
  final PipelineStageBeforeEntry? beforeEntry;
  /// The name of the stage.
  final String name;
  /// The method to use when a stage has not completed successfully. For example, configuring this field for rollback will roll back a failed stage automatically to the last successful pipeline execution in the stage.
  final PipelineStageOnFailure? onFailure;
  /// The method to use when a stage has succeeded. For example, configuring this field for conditions will allow the stage to succeed when the conditions are met.
  final PipelineStageOnSuccess? onSuccess;

  /// Creates a new [PipelineStage].
  /// [actions] The action(s) to include in the stage. Defined as an `action` block below
  /// [beforeEntry] The method to use when a stage allows entry. For example, configuring this field for conditions will allow entry to the stage when the conditions are met.
  /// [name] The name of the stage.
  /// [onFailure] The method to use when a stage has not completed successfully. For example, configuring this field for rollback will roll back a failed stage automatically to the last successful pipeline execution in the stage.
  /// [onSuccess] The method to use when a stage has succeeded. For example, configuring this field for conditions will allow the stage to succeed when the conditions are met.
  PipelineStage({
    required this.actions,
    this.beforeEntry,
    required this.name,
    this.onFailure,
    this.onSuccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<PipelineStageAction, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'beforeEntry': ?beforeEntry == null ? null : beforeEntry!.toMap(),
      'name': name,
      'onFailure': ?onFailure == null ? null : onFailure!.toMap(),
      'onSuccess': ?onSuccess == null ? null : onSuccess!.toMap(),
    };
  }

  factory PipelineStage.fromMap(Map<String, dynamic> map) {
    return PipelineStage(
      actions: pulumi.Input.decodeList<PipelineStageAction>(map['actions'], (value) => PipelineStageAction.fromMap((value as Map).cast<String, dynamic>())),
      beforeEntry: map['beforeEntry'] == null ? null : PipelineStageBeforeEntry.fromMap((map['beforeEntry'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onFailure: map['onFailure'] == null ? null : PipelineStageOnFailure.fromMap((map['onFailure'] as Map).cast<String, dynamic>()),
      onSuccess: map['onSuccess'] == null ? null : PipelineStageOnSuccess.fromMap((map['onSuccess'] as Map).cast<String, dynamic>()),
    );
  }
}

