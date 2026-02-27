// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_autonomous_vm_cluster_maintenance_window_days_of_week/cloud_autonomous_vm_cluster_maintenance_window_days_of_week.dart';
import '../cloud_autonomous_vm_cluster_maintenance_window_month/cloud_autonomous_vm_cluster_maintenance_window_month.dart';

class CloudAutonomousVmClusterMaintenanceWindow {
  /// The days of the week when maintenance can be performed. Changing this will force terraform to create new resource.
  final List<CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>? daysOfWeeks;

  /// The hours of the day when maintenance can be performed. Changing this will force terraform to create new resource.
  final List<int>? hoursOfDays;

  /// The lead time in weeks before the maintenance window. Changing this will force terraform to create new resource.
  final int? leadTimeInWeeks;

  /// The months when maintenance can be performed. Changing this will force terraform to create new resource.
  final List<CloudAutonomousVmClusterMaintenanceWindowMonth>? months;

  /// The preference for the maintenance window scheduling. Changing this will force terraform to create new resource.
  final String preference;

  /// Indicates whether to skip release updates during maintenance. Changing this will force terraform to create new resource.
  final List<int>? weeksOfMonths;

  CloudAutonomousVmClusterMaintenanceWindow({
    this.daysOfWeeks,
    this.hoursOfDays,
    this.leadTimeInWeeks,
    this.months,
    required this.preference,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysOfWeeksValue = daysOfWeeks;
    if (daysOfWeeksValue != null) {
      map['daysOfWeeks'] = pulumi.Input.encodeList<
          CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek,
          Map<String, dynamic>>(daysOfWeeksValue, (value) => value.toMap());
    }
    final hoursOfDaysValue = hoursOfDays;
    if (hoursOfDaysValue != null) {
      map['hoursOfDays'] = hoursOfDaysValue;
    }
    final leadTimeInWeeksValue = leadTimeInWeeks;
    if (leadTimeInWeeksValue != null) {
      map['leadTimeInWeeks'] = leadTimeInWeeksValue;
    }
    final monthsValue = months;
    if (monthsValue != null) {
      map['months'] = pulumi.Input.encodeList<
          CloudAutonomousVmClusterMaintenanceWindowMonth,
          Map<String, dynamic>>(monthsValue, (value) => value.toMap());
    }
    map['preference'] = preference;
    final weeksOfMonthsValue = weeksOfMonths;
    if (weeksOfMonthsValue != null) {
      map['weeksOfMonths'] = weeksOfMonthsValue;
    }
    return map;
  }

  factory CloudAutonomousVmClusterMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindow(
      daysOfWeeks: map['daysOfWeeks'] == null
          ? null
          : pulumi.Input.decodeList<
                  CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>(
              map['daysOfWeeks'],
              (value) =>
                  CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(
                      (value as Map).cast<String, dynamic>())),
      hoursOfDays: map['hoursOfDays'] == null
          ? null
          : (map['hoursOfDays'] as List).cast<int>(),
      leadTimeInWeeks:
          map['leadTimeInWeeks'] == null ? null : map['leadTimeInWeeks'] as int,
      months: map['months'] == null
          ? null
          : pulumi.Input.decodeList<
                  CloudAutonomousVmClusterMaintenanceWindowMonth>(
              map['months'],
              (value) => CloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(
                  (value as Map).cast<String, dynamic>())),
      preference: map['preference'] as String,
      weeksOfMonths: map['weeksOfMonths'] == null
          ? null
          : (map['weeksOfMonths'] as List).cast<int>(),
    );
  }
}
