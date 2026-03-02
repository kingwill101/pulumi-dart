// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructure_maintenance_window_days_of_week.dart';
import 'get_cloud_exadata_infrastructure_maintenance_window_month.dart';

class GetCloudExadataInfrastructureMaintenanceWindow {
  final pulumi.Input<int> customActionTimeoutInMins;
  final pulumi.Input<List<GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek>> daysOfWeeks;
  final pulumi.Input<List<int>> hoursOfDays;
  final pulumi.Input<bool> isCustomActionTimeoutEnabled;
  final pulumi.Input<int> leadTimeInWeeks;
  final pulumi.Input<List<GetCloudExadataInfrastructureMaintenanceWindowMonth>> months;
  final pulumi.Input<String> patchingMode;
  final pulumi.Input<String> preference;
  final pulumi.Input<List<int>> weeksOfMonths;

  /// Creates a new [GetCloudExadataInfrastructureMaintenanceWindow].
  /// [customActionTimeoutInMins] Required.
  /// [daysOfWeeks] Required.
  /// [hoursOfDays] Required.
  /// [isCustomActionTimeoutEnabled] Required.
  /// [leadTimeInWeeks] Required.
  /// [months] Required.
  /// [patchingMode] Required.
  /// [preference] Required.
  /// [weeksOfMonths] Required.
  GetCloudExadataInfrastructureMaintenanceWindow({
    required this.customActionTimeoutInMins,
    required this.daysOfWeeks,
    required this.hoursOfDays,
    required this.isCustomActionTimeoutEnabled,
    required this.leadTimeInWeeks,
    required this.months,
    required this.patchingMode,
    required this.preference,
    required this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActionTimeoutInMins': customActionTimeoutInMins,
      'daysOfWeeks': pulumi.Input.mapInputValue<List<GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek>, List<Map<String, dynamic>>>(daysOfWeeks, (value) => pulumi.Input.encodeList<GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hoursOfDays': hoursOfDays,
      'isCustomActionTimeoutEnabled': isCustomActionTimeoutEnabled,
      'leadTimeInWeeks': leadTimeInWeeks,
      'months': pulumi.Input.mapInputValue<List<GetCloudExadataInfrastructureMaintenanceWindowMonth>, List<Map<String, dynamic>>>(months, (value) => pulumi.Input.encodeList<GetCloudExadataInfrastructureMaintenanceWindowMonth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'patchingMode': patchingMode,
      'preference': preference,
      'weeksOfMonths': weeksOfMonths,
    };
  }

  factory GetCloudExadataInfrastructureMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureMaintenanceWindow(
      customActionTimeoutInMins: (map['customActionTimeoutInMins'] as int).input(),
      daysOfWeeks: (pulumi.Input.decodeList<GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek>(map['daysOfWeeks']!, (value) => GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap((value as Map).cast<String, dynamic>()))).input(),
      hoursOfDays: ((map['hoursOfDays'] as List).cast<int>()).input(),
      isCustomActionTimeoutEnabled: (map['isCustomActionTimeoutEnabled'] as bool).input(),
      leadTimeInWeeks: (map['leadTimeInWeeks'] as int).input(),
      months: (pulumi.Input.decodeList<GetCloudExadataInfrastructureMaintenanceWindowMonth>(map['months']!, (value) => GetCloudExadataInfrastructureMaintenanceWindowMonth.fromMap((value as Map).cast<String, dynamic>()))).input(),
      patchingMode: (map['patchingMode'] as String).input(),
      preference: (map['preference'] as String).input(),
      weeksOfMonths: ((map['weeksOfMonths'] as List).cast<int>()).input(),
    );
  }
}

