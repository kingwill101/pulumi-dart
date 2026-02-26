// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutomatedBackupPolicyWeeklyScheduleStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final int? hours;

  /// Minutes of hour of day. Currently, only the value 0 is supported.
  final int? minutes;

  /// Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  final int? nanos;

  /// Seconds of minutes of the time. Currently, only the value 0 is supported.
  final int? seconds;

  ClusterAutomatedBackupPolicyWeeklyScheduleStartTime({
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

  factory ClusterAutomatedBackupPolicyWeeklyScheduleStartTime.fromMap(
      Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicyWeeklyScheduleStartTime(
      hours: map['hours'] == null ? null : map['hours'] as int,
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}
