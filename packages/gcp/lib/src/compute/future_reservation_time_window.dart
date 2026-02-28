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
    final map = <String, dynamic>{};
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue.toMap();
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    map['startTime'] = startTime;
    return map;
  }

  factory FutureReservationTimeWindow.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindow(
      duration: map['duration'] == null
          ? null
          : FutureReservationTimeWindowDuration.fromMap(
              (map['duration'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
