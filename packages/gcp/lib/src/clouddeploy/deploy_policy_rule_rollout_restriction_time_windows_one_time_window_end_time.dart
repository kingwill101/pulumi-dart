// ignore_for_file: unused_element, unnecessary_cast

class DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime {
  /// Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int? hours;

  /// Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59.
  final int? minutes;

  /// Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999.
  final int? nanos;

  /// Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may allow the value 60 if it allows leap-seconds.
  final int? seconds;

  /// Creates a new [DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime].
  /// [hours] Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  /// [minutes] Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59.
  /// [nanos] Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal to 999,999,999.
  /// [seconds] Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal to 59. An API may allow the value 60 if it allows leap-seconds.
  DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hoursValue = hours;
    if (hoursValue != null) {
      map['hours'] = hoursValue;
    }
    final minutesValue = minutes;
    if (minutesValue != null) {
      map['minutes'] = minutesValue;
    }
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

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime.fromMap(
      Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime(
      hours: map['hours'] == null ? null : map['hours'] as int,
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}
