// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_maintenance_update_policy_maintenance_window_start_time.dart';

class ClusterMaintenanceUpdatePolicyMaintenanceWindow {
  /// Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final String day;
  /// Preferred time to start the maintenance operation on the specified day. Maintenance will start within 1 hour of this time.
  /// Structure is documented below.
  final ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime startTime;

  /// Creates a new [ClusterMaintenanceUpdatePolicyMaintenanceWindow].
  /// [day] Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc.
  /// [startTime] Preferred time to start the maintenance operation on the specified day. Maintenance will start within 1 hour of this time.
  ClusterMaintenanceUpdatePolicyMaintenanceWindow({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'startTime': startTime.toMap(),
    };
  }

  factory ClusterMaintenanceUpdatePolicyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenanceUpdatePolicyMaintenanceWindow(
      day: map['day'] as String,
      startTime: ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}

