// ignore_for_file: unused_element, unnecessary_cast

import 'duration_compute_beta.dart';

class FutureReservationTimeWindowComputeBeta {
  final DurationComputeBeta? duration;
  final String? endTime;
  /// Start time of the Future Reservation. The start_time is an RFC3339 string.
  final String? startTime;

  /// Creates a new [FutureReservationTimeWindowComputeBeta].
  /// [duration] Optional.
  /// [endTime] Optional.
  /// [startTime] Start time of the Future Reservation. The start_time is an RFC3339 string.
  FutureReservationTimeWindowComputeBeta({
    this.duration,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration == null ? null : duration!.toMap(),
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory FutureReservationTimeWindowComputeBeta.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindowComputeBeta(
      duration: map['duration'] == null ? null : DurationComputeBeta.fromMap((map['duration'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

