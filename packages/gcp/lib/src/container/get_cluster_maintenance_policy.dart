// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_policy_daily_maintenance_window.dart';
import 'get_cluster_maintenance_policy_maintenance_exclusion.dart';
import 'get_cluster_maintenance_policy_recurring_window.dart';

class GetClusterMaintenancePolicy {
  /// Time window specified for daily maintenance operations. Specify start_time in RFC3339 format "HH:MM”, where HH : [00-23] and MM : [00-59] GMT.
  final List<GetClusterMaintenancePolicyDailyMaintenanceWindow>
      dailyMaintenanceWindows;

  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  final List<GetClusterMaintenancePolicyMaintenanceExclusion>
      maintenanceExclusions;

  /// Time window for recurring maintenance operations.
  final List<GetClusterMaintenancePolicyRecurringWindow> recurringWindows;

  /// Creates a new [GetClusterMaintenancePolicy].
  /// [dailyMaintenanceWindows] Time window specified for daily maintenance operations. Specify start_time in RFC3339 format "HH:MM”, where HH : [00-23] and MM : [00-59] GMT.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows.
  /// [recurringWindows] Time window for recurring maintenance operations.
  GetClusterMaintenancePolicy({
    required this.dailyMaintenanceWindows,
    required this.maintenanceExclusions,
    required this.recurringWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dailyMaintenanceWindows'] = pulumi.Input.encodeList<
            GetClusterMaintenancePolicyDailyMaintenanceWindow,
            Map<String, dynamic>>(
        dailyMaintenanceWindows, (value) => value.toMap());
    map['maintenanceExclusions'] = pulumi.Input.encodeList<
        GetClusterMaintenancePolicyMaintenanceExclusion,
        Map<String, dynamic>>(maintenanceExclusions, (value) => value.toMap());
    map['recurringWindows'] = pulumi.Input.encodeList<
        GetClusterMaintenancePolicyRecurringWindow,
        Map<String, dynamic>>(recurringWindows, (value) => value.toMap());
    return map;
  }

  factory GetClusterMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicy(
      dailyMaintenanceWindows: pulumi.Input.decodeList<
              GetClusterMaintenancePolicyDailyMaintenanceWindow>(
          map['dailyMaintenanceWindows'],
          (value) => GetClusterMaintenancePolicyDailyMaintenanceWindow.fromMap(
              (value as Map).cast<String, dynamic>())),
      maintenanceExclusions: pulumi.Input.decodeList<
              GetClusterMaintenancePolicyMaintenanceExclusion>(
          map['maintenanceExclusions'],
          (value) => GetClusterMaintenancePolicyMaintenanceExclusion.fromMap(
              (value as Map).cast<String, dynamic>())),
      recurringWindows:
          pulumi.Input.decodeList<GetClusterMaintenancePolicyRecurringWindow>(
              map['recurringWindows'],
              (value) => GetClusterMaintenancePolicyRecurringWindow.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
