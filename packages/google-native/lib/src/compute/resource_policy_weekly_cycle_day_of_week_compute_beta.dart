// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_weekly_cycle_day_of_week_day_compute_beta.dart';

class ResourcePolicyWeeklyCycleDayOfWeekComputeBeta {
  /// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  final ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta? day;

  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final String? startTime;

  /// Creates a new [ResourcePolicyWeeklyCycleDayOfWeekComputeBeta].
  /// [day] Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  /// [startTime] Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  ResourcePolicyWeeklyCycleDayOfWeekComputeBeta({
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

  factory ResourcePolicyWeeklyCycleDayOfWeekComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleDayOfWeekComputeBeta(
      day: map['day'] == null
          ? null
          : ResourcePolicyWeeklyCycleDayOfWeekDayComputeBeta.fromValue(
              map['day'] as String),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
