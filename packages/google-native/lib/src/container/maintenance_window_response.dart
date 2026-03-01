// ignore_for_file: unused_element, unnecessary_cast

import 'daily_maintenance_window_response.dart';
import 'recurring_time_window_response.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindowResponse {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final DailyMaintenanceWindowResponse dailyMaintenanceWindow;

  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final Map<String, String> maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final RecurringTimeWindowResponse recurringWindow;

  /// Creates a new [MaintenanceWindowResponse].
  /// [dailyMaintenanceWindow] DailyMaintenanceWindow specifies a daily maintenance operation window.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindow] RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  MaintenanceWindowResponse({
    required this.dailyMaintenanceWindow,
    required this.maintenanceExclusions,
    required this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': dailyMaintenanceWindow.toMap(),
      'maintenanceExclusions': maintenanceExclusions,
      'recurringWindow': recurringWindow.toMap(),
    };
  }

  factory MaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse(
      dailyMaintenanceWindow: DailyMaintenanceWindowResponse.fromMap(
        (map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>(),
      ),
      maintenanceExclusions: (map['maintenanceExclusions'] as Map)
          .cast<String, String>(),
      recurringWindow: RecurringTimeWindowResponse.fromMap(
        (map['recurringWindow'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
