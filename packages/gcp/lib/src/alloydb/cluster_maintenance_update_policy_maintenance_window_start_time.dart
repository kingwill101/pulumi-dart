// ignore_for_file: unused_element, unnecessary_cast

class ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  final int hours;

  /// Minutes of hour of day. Currently, only the value 0 is supported.
  final int? minutes;

  /// Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  final int? nanos;

  /// Seconds of minutes of the time. Currently, only the value 0 is supported.
  final int? seconds;

  /// Creates a new [ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23.
  /// [minutes] Minutes of hour of day. Currently, only the value 0 is supported.
  /// [nanos] Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  /// [seconds] Seconds of minutes of the time. Currently, only the value 0 is supported.
  ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime({
    required this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
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

  factory ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime.fromMap(
      Map<String, dynamic> map) {
    return ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] == null ? null : map['minutes'] as int,
      nanos: map['nanos'] == null ? null : map['nanos'] as int,
      seconds: map['seconds'] == null ? null : map['seconds'] as int,
    );
  }
}
