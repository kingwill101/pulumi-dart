// ignore_for_file: unused_element, unnecessary_cast

import 'status_response8.dart';

/// The status of a task attempt.
class AttemptStatusResponse {
  /// The time that this attempt was dispatched. `dispatch_time` will be truncated to the nearest microsecond.
  final String dispatchTime;

  /// The response from the target for this attempt. If the task has not been attempted or the task is currently running then the response status is unset.
  final StatusResponse8 responseStatus;

  /// The time that this attempt response was received. `response_time` will be truncated to the nearest microsecond.
  final String responseTime;

  /// The time that this attempt was scheduled. `schedule_time` will be truncated to the nearest microsecond.
  final String scheduleTime;

  AttemptStatusResponse({
    required this.dispatchTime,
    required this.responseStatus,
    required this.responseTime,
    required this.scheduleTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dispatchTime'] = dispatchTime;
    map['responseStatus'] = responseStatus.toMap();
    map['responseTime'] = responseTime;
    map['scheduleTime'] = scheduleTime;
    return map;
  }

  factory AttemptStatusResponse.fromMap(Map<String, dynamic> map) {
    return AttemptStatusResponse(
      dispatchTime: map['dispatchTime'] as String,
      responseStatus: StatusResponse8.fromMap(
          (map['responseStatus'] as Map).cast<String, dynamic>()),
      responseTime: map['responseTime'] as String,
      scheduleTime: map['scheduleTime'] as String,
    );
  }
}
