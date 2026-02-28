// ignore_for_file: unused_element, unnecessary_cast

class InstanceTemplateSchedulingGracefulShutdownMaxDuration {
  /// Span of time that's a fraction of a second at nanosecond
  /// resolution. Durations less than one second are represented with a 0
  /// `seconds` field and a positive `nanos` field. Must be from 0 to
  /// 999,999,999 inclusive.
  final int? nanos;

  /// Span of time at a resolution of a second.
  /// The value must be between 1 and 3600, which is 3,600 seconds (one hour).`
  final int seconds;

  /// Creates a new [InstanceTemplateSchedulingGracefulShutdownMaxDuration].
  /// [nanos] Span of time that's a fraction of a second at nanosecond
  /// [seconds] Span of time at a resolution of a second.
  InstanceTemplateSchedulingGracefulShutdownMaxDuration({
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

  factory InstanceTemplateSchedulingGracefulShutdownMaxDuration.fromMap(
      Map<String, dynamic> map) {
    return InstanceTemplateSchedulingGracefulShutdownMaxDuration(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}
