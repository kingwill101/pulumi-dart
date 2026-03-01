// ignore_for_file: unused_element, unnecessary_cast


class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration {
  /// Span of time that's a fraction of a second at nanosecond resolution.
  final int? nanos;
  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  final String? seconds;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution.
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration.fromMap(Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsTimeWindowDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as String,
    );
  }
}

