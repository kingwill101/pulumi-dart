// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

class FutureReservationTimeWindowResponse {
  final DurationResponse duration;
  final String endTime;
  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final String startTime;

  /// Creates a new [FutureReservationTimeWindowResponse].
  /// [duration] Required.
  /// [endTime] Required.
  /// [startTime] Start time of the Future Reservation. The start_time is an RFC3339 string.
  FutureReservationTimeWindowResponse({
    required this.duration,
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration.toMap(),
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory FutureReservationTimeWindowResponse.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindowResponse(
      duration: DurationResponse.fromMap((map['duration'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

