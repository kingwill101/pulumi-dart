// ignore_for_file: unused_element, unnecessary_cast

import 'status_response_cloudtasks_v2beta3.dart';

/// The status of a task attempt.
class AttemptResponseCloudtasksV2beta3 {
  /// The time that this attempt was dispatched. `dispatch_time` will be truncated to the nearest microsecond.
  final String dispatchTime;

  /// The response from the worker for this attempt. If `response_time` is unset, then the task has not been attempted or is currently running and the `response_status` field is meaningless.
  final StatusResponseCloudtasksV2beta3 responseStatus;

  /// The time that this attempt response was received. `response_time` will be truncated to the nearest microsecond.
  final String responseTime;

  /// The time that this attempt was scheduled. `schedule_time` will be truncated to the nearest microsecond.
  final String scheduleTime;

  AttemptResponseCloudtasksV2beta3({
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

  factory AttemptResponseCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return AttemptResponseCloudtasksV2beta3(
      dispatchTime: map['dispatchTime'] as String,
      responseStatus: StatusResponseCloudtasksV2beta3.fromMap(
          (map['responseStatus'] as Map).cast<String, dynamic>()),
      responseTime: map['responseTime'] as String,
      scheduleTime: map['scheduleTime'] as String,
    );
  }
}
