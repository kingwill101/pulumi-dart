// ignore_for_file: unused_element, unnecessary_cast

import 'daily_maintenance_window_container_v1beta1.dart';
import 'recurring_time_window_container_v1beta1.dart';

/// MaintenanceWindow defines the maintenance window to be used for the cluster.
class MaintenanceWindowContainerV1beta1 {
  /// DailyMaintenanceWindow specifies a daily maintenance operation window.
  final DailyMaintenanceWindowContainerV1beta1? dailyMaintenanceWindow;
  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final Map<String, String>? maintenanceExclusions;
  /// RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  final RecurringTimeWindowContainerV1beta1? recurringWindow;

  /// Creates a new [MaintenanceWindowContainerV1beta1].
  /// [dailyMaintenanceWindow] DailyMaintenanceWindow specifies a daily maintenance operation window.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindow] RecurringWindow specifies some number of recurring time periods for maintenance to occur. The time windows may be overlapping. If no maintenance windows are set, maintenance can occur at any time.
  MaintenanceWindowContainerV1beta1({
    this.dailyMaintenanceWindow,
    this.maintenanceExclusions,
    this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': ?dailyMaintenanceWindow == null ? null : dailyMaintenanceWindow!.toMap(),
      'maintenanceExclusions': ?maintenanceExclusions,
      'recurringWindow': ?recurringWindow == null ? null : recurringWindow!.toMap(),
    };
  }

  factory MaintenanceWindowContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowContainerV1beta1(
      dailyMaintenanceWindow: map['dailyMaintenanceWindow'] == null ? null : DailyMaintenanceWindowContainerV1beta1.fromMap((map['dailyMaintenanceWindow'] as Map).cast<String, dynamic>()),
      maintenanceExclusions: map['maintenanceExclusions'] == null ? null : (map['maintenanceExclusions'] as Map).cast<String, String>(),
      recurringWindow: map['recurringWindow'] == null ? null : RecurringTimeWindowContainerV1beta1.fromMap((map['recurringWindow'] as Map).cast<String, dynamic>()),
    );
  }
}

