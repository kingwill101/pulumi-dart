// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterMaintenanceWindow {
  /// The duration of the maintenance window.
  final String duration;
  /// Indicates whether to enable the maintenance window.
  final bool enable;
  /// Maintenance start time.
  final String maintenanceTime;
  /// The recurrence rule for the maintenance window, defined using RFC5545 Recurrence Rule syntax.
  final String recurrence;
  /// The maintenance cycle.
  final String weeklyPeriod;

  /// Creates a new [GetClustersClusterMaintenanceWindow].
  /// [duration] The duration of the maintenance window.
  /// [enable] Indicates whether to enable the maintenance window.
  /// [maintenanceTime] Maintenance start time.
  /// [recurrence] The recurrence rule for the maintenance window, defined using RFC5545 Recurrence Rule syntax.
  /// [weeklyPeriod] The maintenance cycle.
  GetClustersClusterMaintenanceWindow({
    required this.duration,
    required this.enable,
    required this.maintenanceTime,
    required this.recurrence,
    required this.weeklyPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'enable': enable,
      'maintenanceTime': maintenanceTime,
      'recurrence': recurrence,
      'weeklyPeriod': weeklyPeriod,
    };
  }

  factory GetClustersClusterMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterMaintenanceWindow(
      duration: map['duration'] as String,
      enable: map['enable'] as bool,
      maintenanceTime: map['maintenanceTime'] as String,
      recurrence: map['recurrence'] as String,
      weeklyPeriod: map['weeklyPeriod'] as String,
    );
  }
}

