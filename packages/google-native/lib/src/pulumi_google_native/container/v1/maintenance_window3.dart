// ignore_for_file: unused_element, unnecessary_cast

import 'daily_maintenance_window.dart';
import 'recurring_time_window.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindow3 {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final DailyMaintenanceWindow? dailyMaintenanceWindow;

  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final Map<String, String>? maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final RecurringTimeWindow? recurringWindow;

  MaintenanceWindow3({
    this.dailyMaintenanceWindow,
    this.maintenanceExclusions,
    this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailyMaintenanceWindowValue = dailyMaintenanceWindow;
    if (dailyMaintenanceWindowValue != null) {
      map['dailyMaintenanceWindow'] = dailyMaintenanceWindowValue.toMap();
    }
    final maintenanceExclusionsValue = maintenanceExclusions;
    if (maintenanceExclusionsValue != null) {
      map['maintenanceExclusions'] = maintenanceExclusionsValue;
    }
    final recurringWindowValue = recurringWindow;
    if (recurringWindowValue != null) {
      map['recurringWindow'] = recurringWindowValue.toMap();
    }
    return map;
  }

  factory MaintenanceWindow3.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow3(
      dailyMaintenanceWindow: map['dailyMaintenanceWindow'] == null
          ? null
          : DailyMaintenanceWindow.fromMap(
              (map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>()),
      maintenanceExclusions: map['maintenanceExclusions'] == null
          ? null
          : (map['maintenanceExclusions'] as Map).cast<String, String>(),
      recurringWindow: map['recurringWindow'] == null
          ? null
          : RecurringTimeWindow.fromMap(
              (map['recurringWindow'] as Map).cast<String, dynamic>()),
    );
  }
}
