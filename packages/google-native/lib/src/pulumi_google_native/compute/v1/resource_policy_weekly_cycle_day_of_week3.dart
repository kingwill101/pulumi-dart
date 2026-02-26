// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_weekly_cycle_day_of_week_day3.dart';

class ResourcePolicyWeeklyCycleDayOfWeek3 {
  /// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  final ResourcePolicyWeeklyCycleDayOfWeekDay3? day;

  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final String? startTime;

  ResourcePolicyWeeklyCycleDayOfWeek3({
    this.day,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dayValue = day;
    if (dayValue != null) {
      map['day'] = dayValue.value;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory ResourcePolicyWeeklyCycleDayOfWeek3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleDayOfWeek3(
      day: map['day'] == null
          ? null
          : ResourcePolicyWeeklyCycleDayOfWeekDay3.fromValue(
              map['day'] as String),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
