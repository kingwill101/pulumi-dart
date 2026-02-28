// ignore_for_file: unused_element, unnecessary_cast

class BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime {
  /// Hours of day in 24 hour format.
  final int? hours;

  /// Minutes of hour of day.
  final int? minutes;

  /// Fractions of seconds in nanoseconds.
  final int? nanos;

  /// Seconds of minutes of the time.
  final int? seconds;

  /// Creates a new [BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime].
  /// [hours] Hours of day in 24 hour format.
  /// [minutes] Minutes of hour of day.
  /// [nanos] Fractions of seconds in nanoseconds.
  /// [seconds] Seconds of minutes of the time.
  BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime({
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

  factory BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime.fromMap(
      Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime(
      hours: map['hours'] == null ? null : map['hours'] as int,
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}
