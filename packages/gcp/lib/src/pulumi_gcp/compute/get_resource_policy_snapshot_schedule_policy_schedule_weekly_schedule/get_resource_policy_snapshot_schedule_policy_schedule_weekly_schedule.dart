// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_resource_policy_snapshot_schedule_policy_schedule_weekly_schedule_day_of_week/get_resource_policy_snapshot_schedule_policy_schedule_weekly_schedule_day_of_week.dart';

class GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule {
  /// May contain up to seven (one for each day of the week) snapshot times.
  final List<
          GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek>
      dayOfWeeks;

  GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule({
    required this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dayOfWeeks'] = pulumi.Input.encodeList<
        GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek,
        Map<String, dynamic>>(dayOfWeeks, (value) => value.toMap());
    return map;
  }

  factory GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule.fromMap(
      Map<String, dynamic> map) {
    return GetResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule(
      dayOfWeeks: pulumi.Input.decodeList<
              GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek>(
          map['dayOfWeeks'],
          (value) =>
              GetResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
