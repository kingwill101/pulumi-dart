// ignore_for_file: unused_element, unnecessary_cast

import 'daily_maintenance_window_response2.dart';
import 'recurring_time_window_response2.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindowResponse4 {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final DailyMaintenanceWindowResponse2 dailyMaintenanceWindow;

  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final Map<String, String> maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final RecurringTimeWindowResponse2 recurringWindow;

  MaintenanceWindowResponse4({
    required this.dailyMaintenanceWindow,
    required this.maintenanceExclusions,
    required this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dailyMaintenanceWindow'] = dailyMaintenanceWindow.toMap();
    map['maintenanceExclusions'] = maintenanceExclusions;
    map['recurringWindow'] = recurringWindow.toMap();
    return map;
  }

  factory MaintenanceWindowResponse4.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse4(
      dailyMaintenanceWindow: DailyMaintenanceWindowResponse2.fromMap(
          (map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>()),
      maintenanceExclusions:
          (map['maintenanceExclusions'] as Map).cast<String, String>(),
      recurringWindow: RecurringTimeWindowResponse2.fromMap(
          (map['recurringWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
