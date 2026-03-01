// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_time_of_day_response.dart';

/// A weekly schedule starts a backup at prescribed start times within a day, for the specified days of the week. The weekly schedule message is flexible and can be used to create many types of schedules. For example, to have a daily backup that starts at 22:00, configure the `start_times` field to have one element "22:00" and the `days_of_week` field to have all seven days of the week.
class WeeklyScheduleResponse {
  /// The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  final List<String> daysOfWeek;

  /// The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  final List<GoogleTypeTimeOfDayResponse> startTimes;

  /// Creates a new [WeeklyScheduleResponse].
  /// [daysOfWeek] The days of the week to perform a backup. If this field is left empty, the default of every day of the week is used.
  /// [startTimes] The times during the day to start a backup. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). If no start times are provided, a single fixed start time is chosen arbitrarily.
  WeeklyScheduleResponse({required this.daysOfWeek, required this.startTimes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeek': daysOfWeek,
      'startTimes':
          pulumi.Input.encodeList<
            GoogleTypeTimeOfDayResponse,
            Map<String, dynamic>
          >(startTimes, (value) => value.toMap()),
    };
  }

  factory WeeklyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyScheduleResponse(
      daysOfWeek: (map['daysOfWeek'] as List).cast<String>(),
      startTimes: pulumi.Input.decodeList<GoogleTypeTimeOfDayResponse>(
        map['startTimes'],
        (value) => GoogleTypeTimeOfDayResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
