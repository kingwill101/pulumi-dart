// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'execution_template.dart';
import 'schedule_state.dart';

/// The set of arguments for Schedule.
class ScheduleArgs3 {
  /// Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday More examples: https://crontab.guru/examples.html
  final Input<String>? cronSchedule;

  /// A brief description of this environment.
  final Input<String>? description;

  /// Notebook Execution Template corresponding to this schedule.
  final Input<ExecutionTemplate>? executionTemplate;
  final Input<String>? location;
  final Input<String>? project;

  /// Required. User-defined unique ID of this schedule.
  final Input<String> scheduleId;
  final Input<ScheduleState>? state;

  /// Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  final Input<String>? timeZone;

  ScheduleArgs3({
    this.cronSchedule,
    this.description,
    this.executionTemplate,
    this.location,
    this.project,
    required this.scheduleId,
    this.state,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cronScheduleValue = cronSchedule;
    if (cronScheduleValue != null) {
      map['cronSchedule'] = cronScheduleValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final executionTemplateValue = executionTemplate;
    if (executionTemplateValue != null) {
      map['executionTemplate'] =
          Input.mapOptionalInputValue<ExecutionTemplate, Map<String, dynamic>>(
              executionTemplateValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['scheduleId'] = scheduleId;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = Input.mapOptionalInputValue<ScheduleState, String>(
          stateValue, (value) => value.value);
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory ScheduleArgs3.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs3(
      cronSchedule: Input.asOptionalInput<String>(map['cronSchedule']),
      description: Input.asOptionalInput<String>(map['description']),
      executionTemplate:
          Input.asOptionalInput<ExecutionTemplate>(map['executionTemplate']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      scheduleId: Input.asInput<String>(map['scheduleId']),
      state: Input.asOptionalInput<ScheduleState>(map['state']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
