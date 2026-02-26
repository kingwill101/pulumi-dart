// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../pipeline_stage_action/pipeline_stage_action.dart';
import '../pipeline_stage_before_entry/pipeline_stage_before_entry.dart';
import '../pipeline_stage_on_failure/pipeline_stage_on_failure.dart';
import '../pipeline_stage_on_success/pipeline_stage_on_success.dart';

class PipelineStage {
  /// The action(s) to include in the stage. Defined as an <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> block below
  final List<PipelineStageAction> actions;

  /// The method to use when a stage allows entry. For example, configuring this field for conditions will allow entry to the stage when the conditions are met.
  final PipelineStageBeforeEntry? beforeEntry;

  /// The name of the stage.
  final String name;

  /// The method to use when a stage has not completed successfully. For example, configuring this field for rollback will roll back a failed stage automatically to the last successful pipeline execution in the stage.
  final PipelineStageOnFailure? onFailure;

  /// The method to use when a stage has succeeded. For example, configuring this field for conditions will allow the stage to succeed when the conditions are met.
  final PipelineStageOnSuccess? onSuccess;

  PipelineStage({
    required this.actions,
    this.beforeEntry,
    required this.name,
    this.onFailure,
    this.onSuccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] =
        Input.encodeList<PipelineStageAction, Map<String, dynamic>>(
            actions, (value) => value.toMap());
    final beforeEntryValue = beforeEntry;
    if (beforeEntryValue != null) {
      map['beforeEntry'] = beforeEntryValue.toMap();
    }
    map['name'] = name;
    final onFailureValue = onFailure;
    if (onFailureValue != null) {
      map['onFailure'] = onFailureValue.toMap();
    }
    final onSuccessValue = onSuccess;
    if (onSuccessValue != null) {
      map['onSuccess'] = onSuccessValue.toMap();
    }
    return map;
  }

  factory PipelineStage.fromMap(Map<String, dynamic> map) {
    return PipelineStage(
      actions: Input.decodeList<PipelineStageAction>(
          map['actions'],
          (value) => PipelineStageAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      beforeEntry: map['beforeEntry'] == null
          ? null
          : PipelineStageBeforeEntry.fromMap(
              (map['beforeEntry'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onFailure: map['onFailure'] == null
          ? null
          : PipelineStageOnFailure.fromMap(
              (map['onFailure'] as Map).cast<String, dynamic>()),
      onSuccess: map['onSuccess'] == null
          ? null
          : PipelineStageOnSuccess.fromMap(
              (map['onSuccess'] as Map).cast<String, dynamic>()),
    );
  }
}
