// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'execution_response.dart';
import 'execution_template_response.dart';

/// Result data returned by getSchedule.
class GetScheduleResult3 {
  /// Time the schedule was created.
  final String createTime;

  /// Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday More examples: https://crontab.guru/examples.html
  final String cronSchedule;

  /// A brief description of this environment.
  final String description;

  /// Display name used for UI purposes. Name can only contain alphanumeric characters, hyphens `-`, and underscores `_`.
  final String displayName;

  /// Notebook Execution Template corresponding to this schedule.
  final ExecutionTemplateResponse executionTemplate;

  /// The name of this schedule. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  final String name;

  /// The most recent execution names triggered from this schedule and their corresponding states.
  final List<ExecutionResponse> recentExecutions;
  final String state;

  /// Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  final String timeZone;

  /// Time the schedule was last updated.
  final String updateTime;

  GetScheduleResult3({
    required this.createTime,
    required this.cronSchedule,
    required this.description,
    required this.displayName,
    required this.executionTemplate,
    required this.name,
    required this.recentExecutions,
    required this.state,
    required this.timeZone,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['cronSchedule'] = cronSchedule;
    map['description'] = description;
    map['displayName'] = displayName;
    map['executionTemplate'] = executionTemplate.toMap();
    map['name'] = name;
    map['recentExecutions'] =
        Input.encodeList<ExecutionResponse, Map<String, dynamic>>(
            recentExecutions, (value) => value.toMap());
    map['state'] = state;
    map['timeZone'] = timeZone;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetScheduleResult3.fromMap(Map<String, dynamic> map) {
    return GetScheduleResult3(
      createTime: map['createTime'] as String,
      cronSchedule: map['cronSchedule'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      executionTemplate: ExecutionTemplateResponse.fromMap(
          (map['executionTemplate'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      recentExecutions: Input.decodeList<ExecutionResponse>(
          map['recentExecutions'],
          (value) => ExecutionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      timeZone: map['timeZone'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
