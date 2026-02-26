// ignore_for_file: unused_element, unnecessary_cast

class FutureReservationTimeWindowDuration {
  /// Span of time that's a fraction of a second at nanosecond resolution.
  final int? nanos;

  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive.
  final String? seconds;

  FutureReservationTimeWindowDuration({
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nanosValue = nanos;
    if (nanosValue != null) {
      map['nanos'] = nanosValue;
    }
    final secondsValue = seconds;
    if (secondsValue != null) {
      map['seconds'] = secondsValue;
    }
    return map;
  }

  factory FutureReservationTimeWindowDuration.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationTimeWindowDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as String,
    );
  }
}
