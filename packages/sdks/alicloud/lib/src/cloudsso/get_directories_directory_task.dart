// ignore_for_file: unused_element, unnecessary_cast


class GetDirectoriesDirectoryTask {
  /// The ID of Access Configuration.
  final String accessConfigurationId;
  /// The Name of Access Configuration.
  final String accessConfigurationName;
  /// The End Time of Task.
  final String endTime;
  /// the Reason for the Failure of  the task.
  final String failureReason;
  /// The ID of Cloud SSO Identity.
  final String principalId;
  /// The Name of Cloud SSO Identity.
  final String principalName;
  /// The Type of Cloud SSO Identity.
  final String principalType;
  /// The Start Time of Task.
  final String startTime;
  /// The Task Status.
  final String status;
  /// The Id of deploy target.
  final String targetId;
  /// The Name of Deploy Target.
  final String targetName;
  /// The Path in RD of Deploy Target.
  final String targetPath;
  /// The Type of Deploy Target.
  final String targetType;
  /// The ID of the Task.
  final String taskId;
  /// The Type of the Task.
  final String taskType;

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
      accessConfigurationId: map['accessConfigurationId'] as String,
      accessConfigurationName: map['accessConfigurationName'] as String,
      endTime: map['endTime'] as String,
      failureReason: map['failureReason'] as String,
      principalId: map['principalId'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      targetId: map['targetId'] as String,
      targetName: map['targetName'] as String,
      targetPath: map['targetPath'] as String,
      targetType: map['targetType'] as String,
      taskId: map['taskId'] as String,
      taskType: map['taskType'] as String,
    );
  }
}

