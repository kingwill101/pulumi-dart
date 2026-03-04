// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_autonomous_vm_cluster_maintenance_window_days_of_week.dart';
import 'get_cloud_autonomous_vm_cluster_maintenance_window_month.dart';

class GetCloudAutonomousVmClusterMaintenanceWindow {
  final pulumi.Input<
    List<GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>
  >
  daysOfWeeks;
  final pulumi.Input<List<int>> hoursOfDays;
  final pulumi.Input<int> leadTimeInWeeks;
  final pulumi.Input<List<GetCloudAutonomousVmClusterMaintenanceWindowMonth>>
  months;
  final pulumi.Input<String> preference;
  final pulumi.Input<List<int>> weeksOfMonths;

  /// Creates a new [GetCloudAutonomousVmClusterMaintenanceWindow].
  /// [daysOfWeeks] Required.
  /// [hoursOfDays] Required.
  /// [leadTimeInWeeks] Required.
  /// [months] Required.
  /// [preference] Required.
  /// [weeksOfMonths] Required.
  GetCloudAutonomousVmClusterMaintenanceWindow({
    required this.daysOfWeeks,
    required this.hoursOfDays,
    required this.leadTimeInWeeks,
    required this.months,
    required this.preference,
    required this.weeksOfMonths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks':
          pulumi.Input.mapInputValue<
            List<GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek>,
            List<Map<String, dynamic>>
          >(
            daysOfWeeks,
            (value) =>
                pulumi.Input.encodeList<
                  GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hoursOfDays': hoursOfDays,
      'leadTimeInWeeks': leadTimeInWeeks,
      'months':
          pulumi.Input.mapInputValue<
            List<GetCloudAutonomousVmClusterMaintenanceWindowMonth>,
            List<Map<String, dynamic>>
          >(
            months,
            (value) =>
                pulumi.Input.encodeList<
                  GetCloudAutonomousVmClusterMaintenanceWindowMonth,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'preference': preference,
      'weeksOfMonths': weeksOfMonths,
    };
  }

  factory GetCloudAutonomousVmClusterMaintenanceWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCloudAutonomousVmClusterMaintenanceWindow(
      daysOfWeeks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek
        >(
          map['daysOfWeeks']!,
          (value) =>
              GetCloudAutonomousVmClusterMaintenanceWindowDaysOfWeek.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      hoursOfDays: pulumi.Input.fromValue(
        (map['hoursOfDays'] as List).cast<int>(),
      ),
      leadTimeInWeeks: pulumi.Input.fromValue(map['leadTimeInWeeks'] as int),
      months: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetCloudAutonomousVmClusterMaintenanceWindowMonth
        >(
          map['months']!,
          (value) => GetCloudAutonomousVmClusterMaintenanceWindowMonth.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      preference: pulumi.Input.fromValue(map['preference'] as String),
      weeksOfMonths: pulumi.Input.fromValue(
        (map['weeksOfMonths'] as List).cast<int>(),
      ),
    );
  }
}
