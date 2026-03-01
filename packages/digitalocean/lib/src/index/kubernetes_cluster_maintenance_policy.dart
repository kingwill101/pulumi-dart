// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterMaintenancePolicy {
  /// The day of the maintenance window policy. May be one of "monday" through "sunday", or "any" to indicate an arbitrary week day.
  final String? day;
  /// A string denoting the duration of the service window, e.g., "04:00".
  final String? duration;
  /// The start time in UTC of the maintenance window policy in 24-hour clock format / HH:MM notation (e.g., 15:00).
  final String? startTime;

  /// Creates a new [KubernetesClusterMaintenancePolicy].
  /// [day] The day of the maintenance window policy. May be one of "monday" through "sunday", or "any" to indicate an arbitrary week day.
  /// [duration] A string denoting the duration of the service window, e.g., "04:00".
  /// [startTime] The start time in UTC of the maintenance window policy in 24-hour clock format / HH:MM notation (e.g., 15:00).
  KubernetesClusterMaintenancePolicy({
    this.day,
    this.duration,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'duration': ?duration,
      'startTime': ?startTime,
    };
  }

  factory KubernetesClusterMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMaintenancePolicy(
      day: map['day'] == null ? null : map['day'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

