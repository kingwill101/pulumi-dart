// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectoriesDirectoryTask {
  /// The ID of Access Configuration.
  final pulumi.Input<String> accessConfigurationId;
  /// The Name of Access Configuration.
  final pulumi.Input<String> accessConfigurationName;
  /// The End Time of Task.
  final pulumi.Input<String> endTime;
  /// the Reason for the Failure of  the task.
  final pulumi.Input<String> failureReason;
  /// The ID of Cloud SSO Identity.
  final pulumi.Input<String> principalId;
  /// The Name of Cloud SSO Identity.
  final pulumi.Input<String> principalName;
  /// The Type of Cloud SSO Identity.
  final pulumi.Input<String> principalType;
  /// The Start Time of Task.
  final pulumi.Input<String> startTime;
  /// The Task Status.
  final pulumi.Input<String> status;
  /// The Id of deploy target.
  final pulumi.Input<String> targetId;
  /// The Name of Deploy Target.
  final pulumi.Input<String> targetName;
  /// The Path in RD of Deploy Target.
  final pulumi.Input<String> targetPath;
  /// The Type of Deploy Target.
  final pulumi.Input<String> targetType;
  /// The ID of the Task.
  final pulumi.Input<String> taskId;
  /// The Type of the Task.
  final pulumi.Input<String> taskType;

  /// Creates a new [GetDirectoriesDirectoryTask].
  /// [accessConfigurationId] The ID of Access Configuration.
  /// [accessConfigurationName] The Name of Access Configuration.
  /// [endTime] The End Time of Task.
  /// [failureReason] the Reason for the Failure of  the task.
  /// [principalId] The ID of Cloud SSO Identity.
  /// [principalName] The Name of Cloud SSO Identity.
  /// [principalType] The Type of Cloud SSO Identity.
  /// [startTime] The Start Time of Task.
  /// [status] The Task Status.
  /// [targetId] The Id of deploy target.
  /// [targetName] The Name of Deploy Target.
  /// [targetPath] The Path in RD of Deploy Target.
  /// [targetType] The Type of Deploy Target.
  /// [taskId] The ID of the Task.
  /// [taskType] The Type of the Task.
  GetDirectoriesDirectoryTask({
    required this.accessConfigurationId,
    required this.accessConfigurationName,
    required this.endTime,
    required this.failureReason,
    required this.principalId,
    required this.principalName,
    required this.principalType,
    required this.startTime,
    required this.status,
    required this.targetId,
    required this.targetName,
    required this.targetPath,
    required this.targetType,
    required this.taskId,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigurationId': accessConfigurationId,
      'accessConfigurationName': accessConfigurationName,
      'endTime': endTime,
      'failureReason': failureReason,
      'principalId': principalId,
      'principalName': principalName,
      'principalType': principalType,
      'startTime': startTime,
      'status': status,
      'targetId': targetId,
      'targetName': targetName,
      'targetPath': targetPath,
      'targetType': targetType,
      'taskId': taskId,
      'taskType': taskType,
    };
  }

  factory GetDirectoriesDirectoryTask.fromMap(Map<String, dynamic> map) {
    return GetDirectoriesDirectoryTask(
      accessConfigurationId: (map['accessConfigurationId'] as String).input(),
      accessConfigurationName: (map['accessConfigurationName'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      failureReason: (map['failureReason'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      principalName: (map['principalName'] as String).input(),
      principalType: (map['principalType'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      targetId: (map['targetId'] as String).input(),
      targetName: (map['targetName'] as String).input(),
      targetPath: (map['targetPath'] as String).input(),
      targetType: (map['targetType'] as String).input(),
      taskId: (map['taskId'] as String).input(),
      taskType: (map['taskType'] as String).input(),
    );
  }
}

