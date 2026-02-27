// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cloud_autonomous_vm_cluster_maintenance_window_days_of_week/get_cloud_autonomous_vm_cluster_maintenance_window_days_of_week.dart';
import '../get_cloud_autonomous_vm_cluster_maintenance_window_month/get_cloud_autonomous_vm_cluster_maintenance_window_month.dart';

class GetCloudAutonomousVmClusterMaintenanceWindow {
  final List<GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>
      daysOfWeeks;
  final List<int> hoursOfDays;
  final int leadTimeInWeeks;
  final List<GetCloudAutonomousVmClusterMaintenanceWindowMonth> months;
  final String preference;
  final List<int> weeksOfMonths;

  GetCloudAutonomousVmClusterMaintenanceWindow({
    required this.daysOfWeeks,
    required this.hoursOfDays,
    required this.leadTimeInWeeks,
    required this.months,
    required this.preference,
    required this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['daysOfWeeks'] = pulumi.Input.encodeList<
        GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek,
        Map<String, dynamic>>(daysOfWeeks, (value) => value.toMap());
    map['hoursOfDays'] = hoursOfDays;
    map['leadTimeInWeeks'] = leadTimeInWeeks;
    map['months'] = pulumi.Input.encodeList<
        GetCloudAutonomousVmClusterMaintenanceWindowMonth,
        Map<String, dynamic>>(months, (value) => value.toMap());
    map['preference'] = preference;
    map['weeksOfMonths'] = weeksOfMonths;
    return map;
  }

  factory GetCloudAutonomousVmClusterMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return GetCloudAutonomousVmClusterMaintenanceWindow(
      daysOfWeeks: pulumi.Input.decodeList<
              GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>(
          map['daysOfWeeks'],
          (value) =>
              GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hoursOfDays: (map['hoursOfDays'] as List).cast<int>(),
      leadTimeInWeeks: map['leadTimeInWeeks'] as int,
      months: pulumi.Input.decodeList<
              GetCloudAutonomousVmClusterMaintenanceWindowMonth>(
          map['months'],
          (value) => GetCloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(
              (value as Map).cast<String, dynamic>())),
      preference: map['preference'] as String,
      weeksOfMonths: (map['weeksOfMonths'] as List).cast<int>(),
    );
  }
}
