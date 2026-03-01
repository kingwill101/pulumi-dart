// ignore_for_file: unused_element, unnecessary_cast

import 'attempt_status_response.dart';

/// Status of the task.
class TaskStatusResponse {
  /// The number of attempts dispatched. This count includes attempts which have been dispatched but haven't received a response.
  final int attemptDispatchCount;

  /// The number of attempts which have received a response. This field is not calculated for pull tasks.
  final int attemptResponseCount;

  /// The status of the task's first attempt. Only dispatch_time will be set. The other AttemptStatus information is not retained by Cloud Tasks. This field is not calculated for pull tasks.
  final AttemptStatusResponse firstAttemptStatus;

  /// The status of the task's last attempt. This field is not calculated for pull tasks.
  final AttemptStatusResponse lastAttemptStatus;

  /// Creates a new [TaskStatusResponse].
  /// [attemptDispatchCount] The number of attempts dispatched. This count includes attempts which have been dispatched but haven't received a response.
  /// [attemptResponseCount] The number of attempts which have received a response. This field is not calculated for pull tasks.
  /// [firstAttemptStatus] The status of the task's first attempt. Only dispatch_time will be set. The other AttemptStatus information is not retained by Cloud Tasks. This field is not calculated for pull tasks.
  /// [lastAttemptStatus] The status of the task's last attempt. This field is not calculated for pull tasks.
  TaskStatusResponse({
    required this.attemptDispatchCount,
    required this.attemptResponseCount,
    required this.firstAttemptStatus,
    required this.lastAttemptStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attemptDispatchCount': attemptDispatchCount,
      'attemptResponseCount': attemptResponseCount,
      'firstAttemptStatus': firstAttemptStatus.toMap(),
      'lastAttemptStatus': lastAttemptStatus.toMap(),
    };
  }

  factory TaskStatusResponse.fromMap(Map<String, dynamic> map) {
    return TaskStatusResponse(
      attemptDispatchCount: map['attemptDispatchCount'] as int,
      attemptResponseCount: map['attemptResponseCount'] as int,
      firstAttemptStatus: AttemptStatusResponse.fromMap(
        (map['firstAttemptStatus'] as Map).cast<String, dynamic>(),
      ),
      lastAttemptStatus: AttemptStatusResponse.fromMap(
        (map['lastAttemptStatus'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
