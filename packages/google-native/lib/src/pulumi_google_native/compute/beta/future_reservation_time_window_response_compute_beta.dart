// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response_compute_beta.dart';

class FutureReservationTimeWindowResponseComputeBeta {
  final DurationResponseComputeBeta duration;
  final String endTime;

  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final String startTime;

  FutureReservationTimeWindowResponseComputeBeta({
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

  factory FutureReservationTimeWindowResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationTimeWindowResponseComputeBeta(
      duration: DurationResponseComputeBeta.fromMap(
          (map['duration'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
