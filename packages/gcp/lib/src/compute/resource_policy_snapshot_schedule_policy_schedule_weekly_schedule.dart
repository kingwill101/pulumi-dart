// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_snapshot_schedule_policy_schedule_weekly_schedule_day_of_week.dart';

class ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule {
  /// May contain up to seven (one for each day of the week) snapshot times.
  /// Structure is documented below.
  final List<ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek> dayOfWeeks;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule].
  /// [dayOfWeeks] May contain up to seven (one for each day of the week) snapshot times.
  ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule({
    required this.dayOfWeeks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeeks': pulumi.Input.encodeList<ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek, Map<String, dynamic>>(dayOfWeeks, (value) => value.toMap()),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule(
      dayOfWeeks: pulumi.Input.decodeList<ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek>(map['dayOfWeeks'], (value) => ResourcePolicySnapshotSchedulePolicyScheduleWeeklyScheduleDayOfWeek.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

