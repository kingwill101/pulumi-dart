// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_maintenance_window_days_of_week.dart';
import 'cloud_exadata_infrastructure_maintenance_window_month.dart';

class CloudExadataInfrastructureMaintenanceWindow {
  /// Custom action timeout in minutes for the maintenance window.
  final pulumi.Input<int> customActionTimeoutInMins;
  /// Days of the week when maintenance can be performed. See `daysOfWeek` Block below.
  final pulumi.Input<List<CloudExadataInfrastructureMaintenanceWindowDaysOfWeek>?>? daysOfWeeks;
  /// Hours of the day when maintenance can be performed.
  final pulumi.Input<List<int>?>? hoursOfDays;
  /// Whether custom action timeout is enabled for the maintenance window.
  final pulumi.Input<bool> isCustomActionTimeoutEnabled;
  /// Lead time in weeks before the maintenance window.
  final pulumi.Input<int?>? leadTimeInWeeks;
  /// Months when maintenance can be performed. See `months` Block below.
  final pulumi.Input<List<CloudExadataInfrastructureMaintenanceWindowMonth>?>? months;
  /// Patching mode for the maintenance window.
  final pulumi.Input<String> patchingMode;
  /// Preference for the maintenance window scheduling.
  final pulumi.Input<String> preference;
  /// Weeks of the month when maintenance can be performed.
  final pulumi.Input<List<int>?>? weeksOfMonths;

  /// Creates a new [CloudExadataInfrastructureMaintenanceWindow].
  /// [customActionTimeoutInMins] Custom action timeout in minutes for the maintenance window.
  /// [daysOfWeeks] Days of the week when maintenance can be performed. See `daysOfWeek` Block below.
  /// [hoursOfDays] Hours of the day when maintenance can be performed.
  /// [isCustomActionTimeoutEnabled] Whether custom action timeout is enabled for the maintenance window.
  /// [leadTimeInWeeks] Lead time in weeks before the maintenance window.
  /// [months] Months when maintenance can be performed. See `months` Block below.
  /// [patchingMode] Patching mode for the maintenance window.
  /// [preference] Preference for the maintenance window scheduling.
  /// [weeksOfMonths] Weeks of the month when maintenance can be performed.
  const CloudExadataInfrastructureMaintenanceWindow({
    required this.customActionTimeoutInMins,
    this.daysOfWeeks,
    this.hoursOfDays,
    required this.isCustomActionTimeoutEnabled,
    this.leadTimeInWeeks,
    this.months,
    required this.patchingMode,
    required this.preference,
    this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActionTimeoutInMins': customActionTimeoutInMins,
      'daysOfWeeks': ?pulumi.Input.mapOptionalInputValue<List<CloudExadataInfrastructureMaintenanceWindowDaysOfWeek>, List<Map<String, dynamic>>>(daysOfWeeks, (value) => pulumi.Input.encodeList<CloudExadataInfrastructureMaintenanceWindowDaysOfWeek, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hoursOfDays': ?hoursOfDays,
      'isCustomActionTimeoutEnabled': isCustomActionTimeoutEnabled,
      'leadTimeInWeeks': ?leadTimeInWeeks,
      'months': ?pulumi.Input.mapOptionalInputValue<List<CloudExadataInfrastructureMaintenanceWindowMonth>, List<Map<String, dynamic>>>(months, (value) => pulumi.Input.encodeList<CloudExadataInfrastructureMaintenanceWindowMonth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'patchingMode': patchingMode,
      'preference': preference,
      'weeksOfMonths': ?weeksOfMonths,
    };
  }

  factory CloudExadataInfrastructureMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureMaintenanceWindow(
      customActionTimeoutInMins: pulumi.Input.fromValue((map['customActionTimeoutInMins'] as num).toInt()),
      daysOfWeeks: (() { final guardedValue = map['daysOfWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudExadataInfrastructureMaintenanceWindowDaysOfWeek>(guardedValue, (value) => CloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hoursOfDays: (() { final guardedValue = map['hoursOfDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      isCustomActionTimeoutEnabled: pulumi.Input.fromValue(map['isCustomActionTimeoutEnabled'] as bool),
      leadTimeInWeeks: (() { final guardedValue = map['leadTimeInWeeks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      months: (() { final guardedValue = map['months']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudExadataInfrastructureMaintenanceWindowMonth>(guardedValue, (value) => CloudExadataInfrastructureMaintenanceWindowMonth.fromMap((value as Map).cast<String, dynamic>()))); })(),
      patchingMode: pulumi.Input.fromValue(map['patchingMode'] as String),
      preference: pulumi.Input.fromValue(map['preference'] as String),
      weeksOfMonths: (() { final guardedValue = map['weeksOfMonths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
    );
  }
}
