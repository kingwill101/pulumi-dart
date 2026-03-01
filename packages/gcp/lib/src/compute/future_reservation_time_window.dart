// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_time_window_duration.dart';

class FutureReservationTimeWindow {
  /// Duration of the future reservation
  /// Structure is documented below.
  final FutureReservationTimeWindowDuration? duration;

  /// End time of the future reservation in RFC3339 format.
  final String? endTime;

  /// Start time of the future reservation in RFC3339 format.
  final String startTime;

  /// Creates a new [FutureReservationTimeWindow].
  /// [duration] Duration of the future reservation
  /// [endTime] End time of the future reservation in RFC3339 format.
  /// [startTime] Start time of the future reservation in RFC3339 format.
  FutureReservationTimeWindow({
    this.duration,
    this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration == null ? null : duration!.toMap(),
      'endTime': ?endTime,
      'startTime': startTime,
    };
  }

  factory FutureReservationTimeWindow.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindow(
      duration: map['duration'] == null
          ? null
          : FutureReservationTimeWindowDuration.fromMap(
              (map['duration'] as Map).cast<String, dynamic>(),
            ),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
