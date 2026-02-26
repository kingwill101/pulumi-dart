// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';

class FutureReservationTimeWindow {
  final Duration? duration;
  final String? endTime;

  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final String? startTime;

  FutureReservationTimeWindow({
    this.duration,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue.toMap();
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory FutureReservationTimeWindow.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindow(
      duration: map['duration'] == null
          ? null
          : Duration.fromMap((map['duration'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
