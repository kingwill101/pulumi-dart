// ignore_for_file: unused_element, unnecessary_cast

class InstanceSchedulingLocalSsdRecoveryTimeout {
  /// Span of time that's a fraction of a second at nanosecond
  /// resolution. Durations less than one second are represented with a 0
  /// `seconds` field and a positive `nanos` field. Must be from 0 to
  /// 999,999,999 inclusive.
  final int? nanos;

  /// Span of time at a resolution of a second. Must be from 0 to
  /// 315,576,000,000 inclusive. Note: these bounds are computed from: 60
  /// sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years.
  final int seconds;

  /// Creates a new [InstanceSchedulingLocalSsdRecoveryTimeout].
  /// [nanos] Span of time that's a fraction of a second at nanosecond
  /// [seconds] Span of time at a resolution of a second. Must be from 0 to
  InstanceSchedulingLocalSsdRecoveryTimeout({
    this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nanos': ?nanos, 'seconds': seconds};
  }

  factory InstanceSchedulingLocalSsdRecoveryTimeout.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceSchedulingLocalSsdRecoveryTimeout(
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}
