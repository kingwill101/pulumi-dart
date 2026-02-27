// ignore_for_file: unused_element, unnecessary_cast

class InstanceTemplateSchedulingLocalSsdRecoveryTimeout {
  /// Span of time that's a fraction of a second at nanosecond
  /// resolution. Durations less than one second are represented with a 0
  /// `seconds` field and a positive `nanos` field. Must be from 0 to
  /// 999,999,999 inclusive.
  final int? nanos;

  /// Span of time at a resolution of a second. Must be from 0 to
  /// 315,576,000,000 inclusive. Note: these bounds are computed from: 60
  /// sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years.
  final int seconds;

  InstanceTemplateSchedulingLocalSsdRecoveryTimeout({
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

  factory InstanceTemplateSchedulingLocalSsdRecoveryTimeout.fromMap(
      Map<String, dynamic> map) {
    return InstanceTemplateSchedulingLocalSsdRecoveryTimeout(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}
