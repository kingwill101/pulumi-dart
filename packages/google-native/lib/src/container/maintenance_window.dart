// ignore_for_file: unused_element, unnecessary_cast

import 'daily_maintenance_window.dart';
import 'recurring_time_window.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindow {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final DailyMaintenanceWindow? dailyMaintenanceWindow;

  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final Map<String, String>? maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final RecurringTimeWindow? recurringWindow;

  /// Creates a new [MaintenanceWindow].
  /// [dailyMaintenanceWindow] DailyMaintenanceWindow specifies a daily maintenance operation window.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindow] RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  MaintenanceWindow({
    this.dailyMaintenanceWindow,
    this.maintenanceExclusions,
    this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': ?dailyMaintenanceWindow == null
          ? null
          : dailyMaintenanceWindow!.toMap(),
      'maintenanceExclusions': ?maintenanceExclusions,
      'recurringWindow': ?recurringWindow == null
          ? null
          : recurringWindow!.toMap(),
    };
  }

  factory MaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindow(
      dailyMaintenanceWindow: map['dailyMaintenanceWindow'] == null
          ? null
          : DailyMaintenanceWindow.fromMap(
              (map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>(),
            ),
      maintenanceExclusions: map['maintenanceExclusions'] == null
          ? null
          : (map['maintenanceExclusions'] as Map).cast<String, String>(),
      recurringWindow: map['recurringWindow'] == null
          ? null
          : RecurringTimeWindow.fromMap(
              (map['recurringWindow'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
