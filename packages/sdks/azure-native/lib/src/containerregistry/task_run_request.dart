// ignore_for_file: unused_element, unnecessary_cast

import 'override_task_step_properties.dart';

/// The parameters for a task run request.
class TaskRunRequest {
  /// The dedicated agent pool for the run.
  final String? agentPoolName;
  /// The value that indicates whether archiving is enabled for the run or not.
  final bool? isArchiveEnabled;
  /// The template that describes the repository and tag information for run log artifact.
  final String? logTemplate;
  /// Set of overridable parameters that can be passed when running a Task.
  final OverrideTaskStepProperties? overrideTaskStepProperties;
  /// The resource ID of task against which run has to be queued.
  final String taskId;
  /// The type of the run request.
  /// Expected value is 'TaskRunRequest'.
  final String type;

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
      'overrideTaskStepProperties': ?overrideTaskStepProperties == null ? null : overrideTaskStepProperties!.toMap(),
      'taskId': taskId,
      'type': type,
    };
  }

  factory TaskRunRequest.fromMap(Map<String, dynamic> map) {
    return TaskRunRequest(
      agentPoolName: map['agentPoolName'] == null ? null : map['agentPoolName'] as String,
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : map['isArchiveEnabled'] as bool,
      logTemplate: map['logTemplate'] == null ? null : map['logTemplate'] as String,
      overrideTaskStepProperties: map['overrideTaskStepProperties'] == null ? null : OverrideTaskStepProperties.fromMap((map['overrideTaskStepProperties'] as Map).cast<String, dynamic>()),
      taskId: map['taskId'] as String,
      type: map['type'] as String,
    );
  }
}

