// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_autonomous_vm_cluster_maintenance_window_days_of_week.dart';
import 'cloud_autonomous_vm_cluster_maintenance_window_month.dart';

class CloudAutonomousVmClusterMaintenanceWindow {
  /// The days of the week when maintenance can be performed. Changing this will force terraform to create new resource.
  final pulumi.Input<List<CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>>? daysOfWeeks;
  /// The hours of the day when maintenance can be performed. Changing this will force terraform to create new resource.
  final pulumi.Input<List<int>>? hoursOfDays;
  /// The lead time in weeks before the maintenance window. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? leadTimeInWeeks;
  /// The months when maintenance can be performed. Changing this will force terraform to create new resource.
  final pulumi.Input<List<CloudAutonomousVmClusterMaintenanceWindowMonth>>? months;
  /// The preference for the maintenance window scheduling. Changing this will force terraform to create new resource.
  final pulumi.Input<String> preference;
  /// Indicates whether to skip release updates during maintenance. Changing this will force terraform to create new resource.
  final pulumi.Input<List<int>>? weeksOfMonths;

  /// Creates a new [CloudAutonomousVmClusterMaintenanceWindow].
  /// [daysOfWeeks] The days of the week when maintenance can be performed. Changing this will force terraform to create new resource.
  /// [hoursOfDays] The hours of the day when maintenance can be performed. Changing this will force terraform to create new resource.
  /// [leadTimeInWeeks] The lead time in weeks before the maintenance window. Changing this will force terraform to create new resource.
  /// [months] The months when maintenance can be performed. Changing this will force terraform to create new resource.
  /// [preference] The preference for the maintenance window scheduling. Changing this will force terraform to create new resource.
  /// [weeksOfMonths] Indicates whether to skip release updates during maintenance. Changing this will force terraform to create new resource.
  const CloudAutonomousVmClusterMaintenanceWindow({
    this.daysOfWeeks,
    this.hoursOfDays,
    this.leadTimeInWeeks,
    this.months,
    required this.preference,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': ?pulumi.Input.mapOptionalInputValue<List<CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>, List<Map<String, dynamic>>>(daysOfWeeks, (value) => pulumi.Input.encodeList<CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hoursOfDays': ?hoursOfDays,
      'leadTimeInWeeks': ?leadTimeInWeeks,
      'months': ?pulumi.Input.mapOptionalInputValue<List<CloudAutonomousVmClusterMaintenanceWindowMonth>, List<Map<String, dynamic>>>(months, (value) => pulumi.Input.encodeList<CloudAutonomousVmClusterMaintenanceWindowMonth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preference': preference,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory CloudAutonomousVmClusterMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterMaintenanceWindow(
      daysOfWeeks: (() { final guardedValue = map['daysOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>(guardedValue, (value) => CloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hoursOfDays: (() { final guardedValue = map['hoursOfDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      leadTimeInWeeks: (() { final guardedValue = map['leadTimeInWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      months: (() { final guardedValue = map['months']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudAutonomousVmClusterMaintenanceWindowMonth>(guardedValue, (value) => CloudAutonomousVmClusterMaintenanceWindowMonth.fromMap((value as Map).cast<String, dynamic>()))); })(),
      preference: pulumi.Input.fromValue(map['preference'] as String),
      weeksOfMonths: (() { final guardedValue = map['weeksOfMonths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}

