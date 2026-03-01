// ignore_for_file: unused_element, unnecessary_cast

/// This Task Execution field includes detail information for task execution procedures, based on StatusEvent types.
class TaskExecutionResponse {
  /// When task is completed as the status of FAILED or SUCCEEDED, exit code is for one task execution result, default is 0 as success.
  final int exitCode;

  /// Creates a new [TaskExecutionResponse].
  /// [exitCode] When task is completed as the status of FAILED or SUCCEEDED, exit code is for one task execution result, default is 0 as success.
  TaskExecutionResponse({required this.exitCode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exitCode': exitCode};
  }

  factory TaskExecutionResponse.fromMap(Map<String, dynamic> map) {
    return TaskExecutionResponse(exitCode: map['exitCode'] as int);
  }
}
