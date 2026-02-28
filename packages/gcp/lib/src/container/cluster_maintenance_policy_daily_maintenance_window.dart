// ignore_for_file: unused_element, unnecessary_cast

class ClusterMaintenancePolicyDailyMaintenanceWindow {
  final String? duration;
  final String startTime;

  /// Creates a new [ClusterMaintenancePolicyDailyMaintenanceWindow].
  /// [duration] Optional.
  /// [startTime] Required.
  ClusterMaintenancePolicyDailyMaintenanceWindow({
    this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    map['startTime'] = startTime;
    return map;
  }

  factory ClusterMaintenancePolicyDailyMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return ClusterMaintenancePolicyDailyMaintenanceWindow(
      duration: map['duration'] == null ? null : map['duration'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
