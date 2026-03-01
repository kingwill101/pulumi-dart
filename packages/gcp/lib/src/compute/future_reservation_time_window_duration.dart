// ignore_for_file: unused_element, unnecessary_cast


class FutureReservationTimeWindowDuration {
  /// Span of time that's a fraction of a second at nanosecond resolution.
  final int? nanos;
  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  final String? seconds;

  /// Creates a new [FutureReservationTimeWindowDuration].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution.
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  FutureReservationTimeWindowDuration({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory FutureReservationTimeWindowDuration.fromMap(Map<String, dynamic> map) {
    return FutureReservationTimeWindowDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as String,
    );
  }
}

