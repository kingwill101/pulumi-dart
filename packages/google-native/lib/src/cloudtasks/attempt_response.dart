// ignore_for_file: unused_element, unnecessary_cast

import 'status_response.dart';

/// The status of a task attempt.
class AttemptResponse {
  /// The time that this attempt was dispatched. `dispatch_time` will be truncated to the nearest microsecond.
  final String dispatchTime;
  /// The response from the worker for this attempt. If `response_time` is unset, then the task has not been attempted or is currently running and the `response_status` field is meaningless.
  final StatusResponse responseStatus;
  /// The time that this attempt response was received. `response_time` will be truncated to the nearest microsecond.
  final String responseTime;
  /// The time that this attempt was scheduled. `schedule_time` will be truncated to the nearest microsecond.
  final String scheduleTime;

  /// Creates a new [AttemptResponse].
  /// [dispatchTime] The time that this attempt was dispatched. `dispatch_time` will be truncated to the nearest microsecond.
  /// [responseStatus] The response from the worker for this attempt. If `response_time` is unset, then the task has not been attempted or is currently running and the `response_status` field is meaningless.
  /// [responseTime] The time that this attempt response was received. `response_time` will be truncated to the nearest microsecond.
  /// [scheduleTime] The time that this attempt was scheduled. `schedule_time` will be truncated to the nearest microsecond.
  AttemptResponse({
    required this.dispatchTime,
    required this.responseStatus,
    required this.responseTime,
    required this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchTime': dispatchTime,
      'responseStatus': responseStatus.toMap(),
      'responseTime': responseTime,
      'scheduleTime': scheduleTime,
    };
  }

  factory AttemptResponse.fromMap(Map<String, dynamic> map) {
    return AttemptResponse(
      dispatchTime: map['dispatchTime'] as String,
      responseStatus: StatusResponse.fromMap((map['responseStatus'] as Map).cast<String, dynamic>()),
      responseTime: map['responseTime'] as String,
      scheduleTime: map['scheduleTime'] as String,
    );
  }
}

