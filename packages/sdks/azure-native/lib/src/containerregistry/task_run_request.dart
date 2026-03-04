// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'override_task_step_properties.dart';

/// The parameters for a task run request.
class TaskRunRequest {
  /// The dedicated agent pool for the run.
  final pulumi.Input<String>? agentPoolName;

  /// The value that indicates whether archiving is enabled for the run or not.
  final pulumi.Input<bool>? isArchiveEnabled;

  /// The template that describes the repository and tag information for run log artifact.
  final pulumi.Input<String>? logTemplate;

  /// Set of overridable parameters that can be passed when running a Task.
  final pulumi.Input<OverrideTaskStepProperties>? overrideTaskStepProperties;

  /// The resource ID of task against which run has to be queued.
  final pulumi.Input<String> taskId;

  /// The type of the run request.
  /// Expected value is 'TaskRunRequest'.
  final pulumi.Input<String> type;

  /// Creates a new [TaskRunRequest].
  /// [agentPoolName] The dedicated agent pool for the run.
  /// [isArchiveEnabled] The value that indicates whether archiving is enabled for the run or not.
  /// [logTemplate] The template that describes the repository and tag information for run log artifact.
  /// [overrideTaskStepProperties] Set of overridable parameters that can be passed when running a Task.
  /// [taskId] The resource ID of task against which run has to be queued.
  /// [type] The type of the run request.
  TaskRunRequest({
    this.agentPoolName,
    this.isArchiveEnabled,
    this.logTemplate,
    this.overrideTaskStepProperties,
    required this.taskId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': ?agentPoolName,
      'isArchiveEnabled': ?isArchiveEnabled,
      'logTemplate': ?logTemplate,
      'overrideTaskStepProperties':
          ?pulumi.Input.mapOptionalInputValue<
            OverrideTaskStepProperties,
            Map<String, dynamic>
          >(overrideTaskStepProperties, (value) => value.toMap()),
      'taskId': taskId,
      'type': type,
    };
  }

  factory TaskRunRequest.fromMap(Map<String, dynamic> map) {
    return TaskRunRequest(
      agentPoolName: (() {
        final guardedValue = map['agentPoolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isArchiveEnabled: (() {
        final guardedValue = map['isArchiveEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logTemplate: (() {
        final guardedValue = map['logTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      overrideTaskStepProperties: (() {
        final guardedValue = map['overrideTaskStepProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OverrideTaskStepProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      taskId: pulumi.Input.fromValue(map['taskId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
