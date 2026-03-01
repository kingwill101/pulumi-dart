// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructure_maintenance_window_days_of_week.dart';
import 'get_cloud_exadata_infrastructure_maintenance_window_month.dart';

class GetCloudExadataInfrastructureMaintenanceWindow {
  final int customActionTimeoutInMins;
  final List<GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek>
  daysOfWeeks;
  final List<int> hoursOfDays;
  final bool isCustomActionTimeoutEnabled;
  final int leadTimeInWeeks;
  final List<GetCloudExadataInfrastructureMaintenanceWindowMonth> months;
  final String patchingMode;
  final String preference;
  final List<int> weeksOfMonths;

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
      'daysOfWeeks':
          pulumi.Input.encodeList<
            GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek,
            Map<String, dynamic>
          >(daysOfWeeks, (value) => value.toMap()),
      'hoursOfDays': hoursOfDays,
      'isCustomActionTimeoutEnabled': isCustomActionTimeoutEnabled,
      'leadTimeInWeeks': leadTimeInWeeks,
      'months':
          pulumi.Input.encodeList<
            GetCloudExadataInfrastructureMaintenanceWindowMonth,
            Map<String, dynamic>
          >(months, (value) => value.toMap()),
      'patchingMode': patchingMode,
      'preference': preference,
      'weeksOfMonths': weeksOfMonths,
    };
  }

  factory GetCloudExadataInfrastructureMaintenanceWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCloudExadataInfrastructureMaintenanceWindow(
      customActionTimeoutInMins: map['customActionTimeoutInMins'] as int,
      daysOfWeeks:
          pulumi.Input.decodeList<
            GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek
          >(
            map['daysOfWeeks'],
            (value) =>
                GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      hoursOfDays: (map['hoursOfDays'] as List).cast<int>(),
      isCustomActionTimeoutEnabled: map['isCustomActionTimeoutEnabled'] as bool,
      leadTimeInWeeks: map['leadTimeInWeeks'] as int,
      months:
          pulumi.Input.decodeList<
            GetCloudExadataInfrastructureMaintenanceWindowMonth
          >(
            map['months'],
            (value) =>
                GetCloudExadataInfrastructureMaintenanceWindowMonth.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      patchingMode: map['patchingMode'] as String,
      preference: map['preference'] as String,
      weeksOfMonths: (map['weeksOfMonths'] as List).cast<int>(),
    );
  }
}
