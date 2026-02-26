// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceStrongSessionAffinityCookieTtl {
  /// Span of time that's a fraction of a second at nanosecond
  /// resolution. Durations less than one second are represented
  /// with a 0 seconds field and a positive nanos field. Must
  /// be from 0 to 999,999,999 inclusive.
  final int? nanos;

  /// Span of time at a resolution of a second.
  /// Must be from 0 to 315,576,000,000 inclusive.
  final int seconds;

  BackendServiceStrongSessionAffinityCookieTtl({
    this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nanosValue = nanos;
    if (nanosValue != null) {
      map['nanos'] = nanosValue;
    }
    map['seconds'] = seconds;
    return map;
  }

  factory BackendServiceStrongSessionAffinityCookieTtl.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceStrongSessionAffinityCookieTtl(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}
