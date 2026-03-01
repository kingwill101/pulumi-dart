// ignore_for_file: unused_element, unnecessary_cast

import 'future_reservation_status_last_known_good_state_future_reservation_specs_time_window_duration.dart';

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow {
  /// Duration of the future reservation
  /// Structure is documented below.
  final FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration?
  duration;

  /// End time of the future reservation in RFC3339 format.
  final String? endTime;

  /// Start time of the future reservation in RFC3339 format.
  final String? startTime;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow].
  /// [duration] Duration of the future reservation
  /// [endTime] End time of the future reservation in RFC3339 format.
  /// [startTime] Start time of the future reservation in RFC3339 format.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow({
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

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindow(
      duration: map['duration'] == null
          ? null
          : FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration.fromMap(
              (map['duration'] as Map).cast<String, dynamic>(),
            ),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
