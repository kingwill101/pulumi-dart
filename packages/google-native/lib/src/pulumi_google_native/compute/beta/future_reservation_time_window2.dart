// ignore_for_file: unused_element, unnecessary_cast

import 'duration2.dart';

class FutureReservationTimeWindow2 {
  final Duration2? duration;
  final String? endTime;

  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final String? startTime;

  FutureReservationTimeWindow2({
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

  factory FutureReservationTimeWindow2.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindow2(
      duration: map['duration'] == null
          ? null
          : Duration2.fromMap((map['duration'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
