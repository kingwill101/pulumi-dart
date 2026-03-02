// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_maintenance_window_days_of_week.dart';
import 'cloud_exadata_infrastructure_maintenance_window_month.dart';

class CloudExadataInfrastructureMaintenanceWindow {
  /// The custom action timeout in minutes for the maintenance window.
  final pulumi.Input<int> customActionTimeoutInMins;
  /// The days of the week when maintenance can be performed.
  final pulumi.Input<List<CloudExadataInfrastructureMaintenanceWindowDaysOfWeek>>? daysOfWeeks;
  /// The hours of the day when maintenance can be performed.
  final pulumi.Input<List<int>>? hoursOfDays;
  /// ndicates whether custom action timeout is enabled for the maintenance window.
  final pulumi.Input<bool> isCustomActionTimeoutEnabled;
  /// The lead time in weeks before the maintenance window.
  final pulumi.Input<int>? leadTimeInWeeks;
  /// The months when maintenance can be performed.
  final pulumi.Input<List<CloudExadataInfrastructureMaintenanceWindowMonth>>? months;
  /// The patching mode for the maintenance window.
  final pulumi.Input<String> patchingMode;
  /// The preference for the maintenance window scheduling.
  final pulumi.Input<String> preference;
  /// The weeks of the month when maintenance can be performed.
  final pulumi.Input<List<int>>? weeksOfMonths;

  /// Creates a new [CloudExadataInfrastructureMaintenanceWindow].
  /// [customActionTimeoutInMins] The custom action timeout in minutes for the maintenance window.
  /// [daysOfWeeks] The days of the week when maintenance can be performed.
  /// [hoursOfDays] The hours of the day when maintenance can be performed.
  /// [isCustomActionTimeoutEnabled] ndicates whether custom action timeout is enabled for the maintenance window.
  /// [leadTimeInWeeks] The lead time in weeks before the maintenance window.
  /// [months] The months when maintenance can be performed.
  /// [patchingMode] The patching mode for the maintenance window.
  /// [preference] The preference for the maintenance window scheduling.
  /// [weeksOfMonths] The weeks of the month when maintenance can be performed.
  CloudExadataInfrastructureMaintenanceWindow({
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
      customActionTimeoutInMins: (map['customActionTimeoutInMins'] as int).input(),
      daysOfWeeks: map['daysOfWeeks'] == null ? null : ((pulumi.Input.decodeList<CloudExadataInfrastructureMaintenanceWindowDaysOfWeek>(map['daysOfWeeks']!, (value) => CloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      hoursOfDays: map['hoursOfDays'] == null ? null : (((map['hoursOfDays'] as List).cast<int>()).input()).input(),
      isCustomActionTimeoutEnabled: (map['isCustomActionTimeoutEnabled'] as bool).input(),
      leadTimeInWeeks: map['leadTimeInWeeks'] == null ? null : ((map['leadTimeInWeeks'] as int).input()).input(),
      months: map['months'] == null ? null : ((pulumi.Input.decodeList<CloudExadataInfrastructureMaintenanceWindowMonth>(map['months']!, (value) => CloudExadataInfrastructureMaintenanceWindowMonth.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      patchingMode: (map['patchingMode'] as String).input(),
      preference: (map['preference'] as String).input(),
      weeksOfMonths: map['weeksOfMonths'] == null ? null : (((map['weeksOfMonths'] as List).cast<int>()).input()).input(),
    );
  }
}

