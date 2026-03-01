// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_weekly_cycle_day_of_week_day.dart';

class ResourcePolicyWeeklyCycleDayOfWeek {
  /// Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  final ResourcePolicyWeeklyCycleDayOfWeekDay? day;

  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final String? startTime;

  /// Creates a new [ResourcePolicyWeeklyCycleDayOfWeek].
  /// [day] Defines a schedule that runs on specific days of the week. Specify one or more days. The following options are available: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY.
  /// [startTime] Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  ResourcePolicyWeeklyCycleDayOfWeek({this.day, this.startTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day == null ? null : day!.value,
      'startTime': ?startTime,
    };
  }

  factory ResourcePolicyWeeklyCycleDayOfWeek.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyWeeklyCycleDayOfWeek(
      day: map['day'] == null
          ? null
          : ResourcePolicyWeeklyCycleDayOfWeekDay.fromValue(
              map['day'] as String,
            ),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
