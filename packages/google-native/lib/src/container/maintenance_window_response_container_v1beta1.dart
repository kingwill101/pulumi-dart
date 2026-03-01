// ignore_for_file: unused_element, unnecessary_cast

import 'daily_maintenance_window_response_container_v1beta1.dart';
import 'recurring_time_window_response_container_v1beta1.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindowResponseContainerV1beta1 {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final DailyMaintenanceWindowResponseContainerV1beta1 dailyMaintenanceWindow;

  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final Map<String, String> maintenanceExclusions;

  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final RecurringTimeWindowResponseContainerV1beta1 recurringWindow;

  /// Creates a new [MaintenanceWindowResponseContainerV1beta1].
  /// [dailyMaintenanceWindow] DailyMaintenanceWindow specifies a daily maintenance operation window.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindow] RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  MaintenanceWindowResponseContainerV1beta1({
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

  factory MaintenanceWindowResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return MaintenanceWindowResponseContainerV1beta1(
      dailyMaintenanceWindow:
          DailyMaintenanceWindowResponseContainerV1beta1.fromMap(
            (map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>(),
          ),
      maintenanceExclusions: (map['maintenanceExclusions'] as Map)
          .cast<String, String>(),
      recurringWindow: RecurringTimeWindowResponseContainerV1beta1.fromMap(
        (map['recurringWindow'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
