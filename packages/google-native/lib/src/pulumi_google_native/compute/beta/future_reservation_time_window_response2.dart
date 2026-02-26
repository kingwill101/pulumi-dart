// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response2.dart';

class FutureReservationTimeWindowResponse2 {
  final DurationResponse2 duration;
  final String endTime;

  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final String startTime;

  FutureReservationTimeWindowResponse2({
    required this.duration,
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration.toMap();
    map['endTime'] = endTime;
    map['startTime'] = startTime;
    return map;
  }

  factory FutureReservationTimeWindowResponse2.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationTimeWindowResponse2(
      duration: DurationResponse2.fromMap(
          (map['duration'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
