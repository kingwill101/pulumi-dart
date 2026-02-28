// ignore_for_file: unused_element, unnecessary_cast


class BackendServiceCircuitBreakersConnectTimeout {
  /// Span of time that's a fraction of a second at nanosecond
  /// resolution. Durations less than one second are represented
  /// with a 0 seconds field and a positive nanos field. Must
  /// be from 0 to 999,999,999 inclusive.
  final int? nanos;
  /// Span of time at a resolution of a second.
  /// Must be from 0 to 315,576,000,000 inclusive.
  final int seconds;

  /// Creates a new [BackendServiceCircuitBreakersConnectTimeout].
  /// [nanos] Span of time that's a fraction of a second at nanosecond
  /// [seconds] Span of time at a resolution of a second.
  BackendServiceCircuitBreakersConnectTimeout({
    this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nanos': ?nanos,
      'seconds': seconds,
    };
  }

  factory BackendServiceCircuitBreakersConnectTimeout.fromMap(Map<String, dynamic> map) {
    return BackendServiceCircuitBreakersConnectTimeout(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}

