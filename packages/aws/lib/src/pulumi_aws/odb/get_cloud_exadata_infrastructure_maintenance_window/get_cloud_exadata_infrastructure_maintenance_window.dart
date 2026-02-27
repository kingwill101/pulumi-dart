// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cloud_exadata_infrastructure_maintenance_window_days_of_week/get_cloud_exadata_infrastructure_maintenance_window_days_of_week.dart';
import '../get_cloud_exadata_infrastructure_maintenance_window_month/get_cloud_exadata_infrastructure_maintenance_window_month.dart';

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
    final map = <String, dynamic>{};
    map['customActionTimeoutInMins'] = customActionTimeoutInMins;
    map['daysOfWeeks'] = pulumi.Input.encodeList<
        GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek,
        Map<String, dynamic>>(daysOfWeeks, (value) => value.toMap());
    map['hoursOfDays'] = hoursOfDays;
    map['isCustomActionTimeoutEnabled'] = isCustomActionTimeoutEnabled;
    map['leadTimeInWeeks'] = leadTimeInWeeks;
    map['months'] = pulumi.Input.encodeList<
        GetCloudExadataInfrastructureMaintenanceWindowMonth,
        Map<String, dynamic>>(months, (value) => value.toMap());
    map['patchingMode'] = patchingMode;
    map['preference'] = preference;
    map['weeksOfMonths'] = weeksOfMonths;
    return map;
  }

  factory GetCloudExadataInfrastructureMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureMaintenanceWindow(
      customActionTimeoutInMins: map['customActionTimeoutInMins'] as int,
      daysOfWeeks: pulumi.Input.decodeList<
              GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek>(
          map['daysOfWeeks'],
          (value) =>
              GetCloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hoursOfDays: (map['hoursOfDays'] as List).cast<int>(),
      isCustomActionTimeoutEnabled: map['isCustomActionTimeoutEnabled'] as bool,
      leadTimeInWeeks: map['leadTimeInWeeks'] as int,
      months: pulumi.Input.decodeList<
              GetCloudExadataInfrastructureMaintenanceWindowMonth>(
          map['months'],
          (value) =>
              GetCloudExadataInfrastructureMaintenanceWindowMonth.fromMap(
                  (value as Map).cast<String, dynamic>())),
      patchingMode: map['patchingMode'] as String,
      preference: map['preference'] as String,
      weeksOfMonths: (map['weeksOfMonths'] as List).cast<int>(),
    );
  }
}
