// ignore_for_file: unused_element, unnecessary_cast

import 'daily_maintenance_window_response.dart';
import 'recurring_time_window_response.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindowResponse3 {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final DailyMaintenanceWindowResponse dailyMaintenanceWindow;

  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final Map<String, String> maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final RecurringTimeWindowResponse recurringWindow;

  MaintenanceWindowResponse3({
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

  factory MaintenanceWindowResponse3.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse3(
      dailyMaintenanceWindow: DailyMaintenanceWindowResponse.fromMap(
          (map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>()),
      maintenanceExclusions:
          (map['maintenanceExclusions'] as Map).cast<String, String>(),
      recurringWindow: RecurringTimeWindowResponse.fromMap(
          (map['recurringWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
