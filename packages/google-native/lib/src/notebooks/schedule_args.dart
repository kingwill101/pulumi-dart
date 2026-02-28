// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_template.dart';
import 'schedule_state.dart';

/// {@template pulumi_notebooks_v1_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_schedule_args_doc}
class ScheduleArgs {
  /// Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday More examples: https://crontab.guru/examples.html
  final pulumi.Input<String>? cronSchedule;
  /// A brief description of this environment.
  final pulumi.Input<String>? description;
  /// Notebook Execution Template corresponding to this schedule.
  final pulumi.Input<ExecutionTemplate>? executionTemplate;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Required. User-defined unique ID of this schedule.
  final pulumi.Input<String> scheduleId;
  final pulumi.Input<ScheduleState>? state;
  /// Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  final pulumi.Input<String>? timeZone;

  /// Creates a new [ScheduleArgs].
  /// [cronSchedule] Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday More examples: https://crontab.guru/examples.html
  /// [description] A brief description of this environment.
  /// [executionTemplate] Notebook Execution Template corresponding to this schedule.
  /// [location] Optional.
  /// [project] Optional.
  /// [scheduleId] Required. User-defined unique ID of this schedule.
  /// [state] Optional.
  /// [timeZone] Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  ScheduleArgs({
    String? cronSchedule,
    String? description,
    ExecutionTemplate? executionTemplate,
    String? location,
    String? project,
    required String scheduleId,
    ScheduleState? state,
    String? timeZone,
  }) :
      cronSchedule = pulumi.Input.asOptionalInput<String>(cronSchedule),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionTemplate = pulumi.Input.asOptionalInput<ExecutionTemplate>(executionTemplate),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      scheduleId = pulumi.Input.asInput<String>(scheduleId),
      state = pulumi.Input.asOptionalInput<ScheduleState>(state),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSchedule': ?cronSchedule,
      'description': ?description,
      'executionTemplate': ?pulumi.Input.mapOptionalInputValue<ExecutionTemplate, Map<String, dynamic>>(executionTemplate, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'scheduleId': scheduleId,
      'state': ?pulumi.Input.mapOptionalInputValue<ScheduleState, String>(state, (value) => value.value),
      'timeZone': ?timeZone,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      cronSchedule: map['cronSchedule'] == null ? null : map['cronSchedule'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      executionTemplate: map['executionTemplate'] == null ? null : ExecutionTemplate.fromMap((map['executionTemplate'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      scheduleId: map['scheduleId'] as String,
      state: map['state'] == null ? null : ScheduleState.fromValue(map['state'] as String),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

