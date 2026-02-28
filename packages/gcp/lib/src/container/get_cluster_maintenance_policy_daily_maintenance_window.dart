// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMaintenancePolicyDailyMaintenanceWindow {
  final String duration;
  final String startTime;

  /// Creates a new [GetClusterMaintenancePolicyDailyMaintenanceWindow].
  /// [duration] Required.
  /// [startTime] Required.
  GetClusterMaintenancePolicyDailyMaintenanceWindow({
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['startTime'] = startTime;
    return map;
  }

  factory GetClusterMaintenancePolicyDailyMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyDailyMaintenanceWindow(
      duration: map['duration'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
