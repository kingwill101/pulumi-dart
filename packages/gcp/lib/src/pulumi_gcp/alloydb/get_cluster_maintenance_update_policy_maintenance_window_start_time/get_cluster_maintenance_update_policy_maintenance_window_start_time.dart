// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  final int hours;

  /// Minutes of hour of day. Currently, only the value 0 is supported.
  final int minutes;

  /// Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  final int nanos;

  /// Seconds of minutes of the time. Currently, only the value 0 is supported.
  final int seconds;

  GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime({
    required this.hours,
    required this.minutes,
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hours'] = hours;
    map['minutes'] = minutes;
    map['nanos'] = nanos;
    map['seconds'] = seconds;
    return map;
  }

  factory GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime(
      hours: map['hours'] as int,
      minutes: map['minutes'] as int,
      nanos: map['nanos'] as int,
      seconds: map['seconds'] as int,
    );
  }
}
