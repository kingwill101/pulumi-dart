// ignore_for_file: unused_element, unnecessary_cast

class GetBackendServiceMaxStreamDuration {
  /// Span of time that's a fraction of a second at nanosecond resolution.
  /// Durations less than one second are represented with a 0 seconds field and a positive nanos field.
  /// Must be from 0 to 999,999,999 inclusive.
  final int nanos;

  /// Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive. (int64 format)
  final String seconds;

  /// Creates a new [GetBackendServiceMaxStreamDuration].
  /// [nanos] Span of time that's a fraction of a second at nanosecond resolution.
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to 315,576,000,000 inclusive. (int64 format)
  GetBackendServiceMaxStreamDuration({
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nanos'] = nanos;
    map['seconds'] = seconds;
    return map;
  }

  factory GetBackendServiceMaxStreamDuration.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceMaxStreamDuration(
      nanos: map['nanos'] as int,
      seconds: map['seconds'] as String,
    );
  }
}
