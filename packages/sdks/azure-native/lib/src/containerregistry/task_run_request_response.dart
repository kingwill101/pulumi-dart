// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'override_task_step_properties_response.dart';

/// The parameters for a task run request.
class TaskRunRequestResponse {
  /// The dedicated agent pool for the run.
  final pulumi.Input<String>? agentPoolName;
  /// The value that indicates whether archiving is enabled for the run or not.
  final pulumi.Input<bool>? isArchiveEnabled;
  /// The template that describes the repository and tag information for run log artifact.
  final pulumi.Input<String>? logTemplate;
  /// Set of overridable parameters that can be passed when running a Task.
  final pulumi.Input<OverrideTaskStepPropertiesResponse>? overrideTaskStepProperties;
  /// The resource ID of task against which run has to be queued.
  final pulumi.Input<String> taskId;
  /// The type of the run request.
  /// Expected value is 'TaskRunRequest'.
  final pulumi.Input<String> type;

  /// Creates a new [TaskRunRequestResponse].
  /// [agentPoolName] The dedicated agent pool for the run.
  /// [isArchiveEnabled] The value that indicates whether archiving is enabled for the run or not.
  /// [logTemplate] The template that describes the repository and tag information for run log artifact.
  /// [overrideTaskStepProperties] Set of overridable parameters that can be passed when running a Task.
  /// [taskId] The resource ID of task against which run has to be queued.
  /// [type] The type of the run request.
  TaskRunRequestResponse({
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
      'overrideTaskStepProperties': ?pulumi.Input.mapOptionalInputValue<OverrideTaskStepPropertiesResponse, Map<String, dynamic>>(overrideTaskStepProperties, (value) => value.toMap()),
      'taskId': taskId,
      'type': type,
    };
  }

  factory TaskRunRequestResponse.fromMap(Map<String, dynamic> map) {
    return TaskRunRequestResponse(
      agentPoolName: map['agentPoolName'] == null ? null : (map['agentPoolName']! as String).input(),
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : (map['isArchiveEnabled']! as bool).input(),
      logTemplate: map['logTemplate'] == null ? null : (map['logTemplate']! as String).input(),
      overrideTaskStepProperties: map['overrideTaskStepProperties'] == null ? null : (OverrideTaskStepPropertiesResponse.fromMap((map['overrideTaskStepProperties']! as Map).cast<String, dynamic>())).input(),
      taskId: (map['taskId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

