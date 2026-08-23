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
  const GetCloudExadataInfrastructureMaintenanceWindow({
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
      customActionTimeoutInMins: pulumi.Input.fromValue(map['customActionTimeoutInMins'] as int),
      daysOfWeeks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek>(map['daysOfWeeks']!, (value) => GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap((value as Map).cast<String, dynamic>()))),
      hoursOfDays: pulumi.Input.fromValue((map['hoursOfDays'] as List).cast<int>()),
      isCustomActionTimeoutEnabled: pulumi.Input.fromValue(map['isCustomActionTimeoutEnabled'] as bool),
      leadTimeInWeeks: pulumi.Input.fromValue(map['leadTimeInWeeks'] as int),
      months: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCloudExadataInfrastructureMaintenanceWindowMonth>(map['months']!, (value) => GetCloudExadataInfrastructureMaintenanceWindowMonth.fromMap((value as Map).cast<String, dynamic>()))),
      patchingMode: pulumi.Input.fromValue(map['patchingMode'] as String),
      preference: pulumi.Input.fromValue(map['preference'] as String),
      weeksOfMonths: pulumi.Input.fromValue((map['weeksOfMonths'] as List).cast<int>()),
    );
  }
}
