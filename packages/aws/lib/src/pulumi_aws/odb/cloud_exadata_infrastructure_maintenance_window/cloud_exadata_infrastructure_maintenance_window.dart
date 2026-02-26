// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cloud_exadata_infrastructure_maintenance_window_days_of_week/cloud_exadata_infrastructure_maintenance_window_days_of_week.dart';
import '../cloud_exadata_infrastructure_maintenance_window_month/cloud_exadata_infrastructure_maintenance_window_month.dart';

class CloudExadataInfrastructureMaintenanceWindow {
  /// The custom action timeout in minutes for the maintenance window.
  final int customActionTimeoutInMins;

  /// The days of the week when maintenance can be performed.
  final List<CloudExadataInfrastructureMaintenanceWindowDaysOfWeek>?
      daysOfWeeks;

  /// The hours of the day when maintenance can be performed.
  final List<int>? hoursOfDays;

  /// ndicates whether custom action timeout is enabled for the maintenance window.
  final bool isCustomActionTimeoutEnabled;

  /// The lead time in weeks before the maintenance window.
  final int? leadTimeInWeeks;

  /// The months when maintenance can be performed.
  final List<CloudExadataInfrastructureMaintenanceWindowMonth>? months;

  /// The patching mode for the maintenance window.
  final String patchingMode;

  /// The preference for the maintenance window scheduling.
  final String preference;

  /// The weeks of the month when maintenance can be performed.
  final List<int>? weeksOfMonths;

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
    final map = <String, dynamic>{};
    map['customActionTimeoutInMins'] = customActionTimeoutInMins;
    final daysOfWeeksValue = daysOfWeeks;
    if (daysOfWeeksValue != null) {
      map['daysOfWeeks'] = Input.encodeList<
          CloudExadataInfrastructureMaintenanceWindowDaysOfWeek,
          Map<String, dynamic>>(daysOfWeeksValue, (value) => value.toMap());
    }
    final hoursOfDaysValue = hoursOfDays;
    if (hoursOfDaysValue != null) {
      map['hoursOfDays'] = hoursOfDaysValue;
    }
    map['isCustomActionTimeoutEnabled'] = isCustomActionTimeoutEnabled;
    final leadTimeInWeeksValue = leadTimeInWeeks;
    if (leadTimeInWeeksValue != null) {
      map['leadTimeInWeeks'] = leadTimeInWeeksValue;
    }
    final monthsValue = months;
    if (monthsValue != null) {
      map['months'] = Input.encodeList<
          CloudExadataInfrastructureMaintenanceWindowMonth,
          Map<String, dynamic>>(monthsValue, (value) => value.toMap());
    }
    map['patchingMode'] = patchingMode;
    map['preference'] = preference;
    final weeksOfMonthsValue = weeksOfMonths;
    if (weeksOfMonthsValue != null) {
      map['weeksOfMonths'] = weeksOfMonthsValue;
    }
    return map;
  }

  factory CloudExadataInfrastructureMaintenanceWindow.fromMap(
      Map<String, dynamic> map) {
    return CloudExadataInfrastructureMaintenanceWindow(
      customActionTimeoutInMins: map['customActionTimeoutInMins'] as int,
      daysOfWeeks: map['daysOfWeeks'] == null
          ? null
          : Input.decodeList<
                  CloudExadataInfrastructureMaintenanceWindowDaysOfWeek>(
              map['daysOfWeeks'],
              (value) =>
                  CloudExadataInfrastructureMaintenanceWindowDaysOfWeek.fromMap(
                      (value as Map).cast<String, dynamic>())),
      hoursOfDays: map['hoursOfDays'] == null
          ? null
          : (map['hoursOfDays'] as List).cast<int>(),
      isCustomActionTimeoutEnabled: map['isCustomActionTimeoutEnabled'] as bool,
      leadTimeInWeeks:
          map['leadTimeInWeeks'] == null ? null : map['leadTimeInWeeks'] as int,
      months: map['months'] == null
          ? null
          : Input.decodeList<CloudExadataInfrastructureMaintenanceWindowMonth>(
              map['months'],
              (value) =>
                  CloudExadataInfrastructureMaintenanceWindowMonth.fromMap(
                      (value as Map).cast<String, dynamic>())),
      patchingMode: map['patchingMode'] as String,
      preference: map['preference'] as String,
      weeksOfMonths: map['weeksOfMonths'] == null
          ? null
          : (map['weeksOfMonths'] as List).cast<int>(),
    );
  }
}
