// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterMaintenanceWindow {
  /// The duration of the maintenance window.
  final pulumi.Input<String> duration;
  /// Indicates whether to enable the maintenance window.
  final pulumi.Input<bool> enable;
  /// Maintenance start time.
  final pulumi.Input<String> maintenanceTime;
  /// The recurrence rule for the maintenance window, defined using RFC5545 Recurrence Rule syntax.
  final pulumi.Input<String> recurrence;
  /// The maintenance cycle.
  final pulumi.Input<String> weeklyPeriod;

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
      duration: (map['duration'] as String).input(),
      enable: (map['enable'] as bool).input(),
      maintenanceTime: (map['maintenanceTime'] as String).input(),
      recurrence: (map['recurrence'] as String).input(),
      weeklyPeriod: (map['weeklyPeriod'] as String).input(),
    );
  }
}

