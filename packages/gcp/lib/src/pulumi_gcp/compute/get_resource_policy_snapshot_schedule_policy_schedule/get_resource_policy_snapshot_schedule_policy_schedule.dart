// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_resource_policy_snapshot_schedule_policy_schedule_daily_schedule/get_resource_policy_snapshot_schedule_policy_schedule_daily_schedule.dart';
import '../get_resource_policy_snapshot_schedule_policy_schedule_hourly_schedule/get_resource_policy_snapshot_schedule_policy_schedule_hourly_schedule.dart';
import '../get_resource_policy_snapshot_schedule_policy_schedule_weekly_schedule/get_resource_policy_snapshot_schedule_policy_schedule_weekly_schedule.dart';

class GetResourcePolicySnapshotSchedulePolicySchedule {
  /// The policy will execute every nth day at the specified time.
  final List<GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule>
      dailySchedules;

  /// The policy will execute every nth hour starting at the specified time.
  final List<GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule>
      hourlySchedules;

  /// Allows specifying a snapshot time for each day of the week.
  final List<GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule>
      weeklySchedules;

  GetResourcePolicySnapshotSchedulePolicySchedule({
    required this.dailySchedules,
    required this.hourlySchedules,
    required this.weeklySchedules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dailySchedules'] = pulumi.Input.encodeList<
        GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule,
        Map<String, dynamic>>(dailySchedules, (value) => value.toMap());
    map['hourlySchedules'] = pulumi.Input.encodeList<
        GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule,
        Map<String, dynamic>>(hourlySchedules, (value) => value.toMap());
    map['weeklySchedules'] = pulumi.Input.encodeList<
        GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule,
        Map<String, dynamic>>(weeklySchedules, (value) => value.toMap());
    return map;
  }

  factory GetResourcePolicySnapshotSchedulePolicySchedule.fromMap(
      Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicySchedule(
      dailySchedules: pulumi.Input.decodeList<
              GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule>(
          map['dailySchedules'],
          (value) =>
              GetResourcePolicySnapshotSchedulePolicyScheduleDailySchedule
                  .fromMap((value as Map).cast<String, dynamic>())),
      hourlySchedules: pulumi.Input.decodeList<
              GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule>(
          map['hourlySchedules'],
          (value) =>
              GetResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule
                  .fromMap((value as Map).cast<String, dynamic>())),
      weeklySchedules: pulumi.Input.decodeList<
              GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule>(
          map['weeklySchedules'],
          (value) =>
              GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
