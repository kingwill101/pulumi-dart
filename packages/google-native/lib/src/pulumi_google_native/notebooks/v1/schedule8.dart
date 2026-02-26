import 'package:pulumi/pulumi.dart';
import 'execution_response.dart';
import 'execution_template_response.dart';
import 'schedule_args3.dart';

/// Creates a new Scheduled Notebook in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Schedule8 extends CustomResource {
  /// Time the schedule was created.
  late final Output<String> createTime;

  /// Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday More examples: https://crontab.guru/examples.html
  late final Output<String> cronSchedule;

  /// A brief description of this environment.
  late final Output<String> description;

  /// Display name used for UI purposes. Name can only contain alphanumeric characters, hyphens `-`, and underscores `_`.
  late final Output<String> displayName;

  /// Notebook Execution Template corresponding to this schedule.
  late final Output<ExecutionTemplateResponse> executionTemplate;
  late final Output<String> location;

  /// The name of this schedule. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  late final Output<String> name;
  late final Output<String> project;

  /// The most recent execution names triggered from this schedule and their corresponding states.
  late final Output<List<ExecutionResponse>> recentExecutions;

  /// Required. User-defined unique ID of this schedule.
  late final Output<String> scheduleId;
  late final Output<String> state;

  /// Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  late final Output<String> timeZone;

  /// Time the schedule was last updated.
  late final Output<String> updateTime;

  Schedule8(
    String name, {
    ScheduleArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v1:Schedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.cronSchedule = registerOutput<String>('cronSchedule');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.executionTemplate =
        registerOutput<ExecutionTemplateResponse>('executionTemplate');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.recentExecutions =
        registerOutput<List<ExecutionResponse>>('recentExecutions');
    this.scheduleId = registerOutput<String>('scheduleId');
    this.state = registerOutput<String>('state');
    this.timeZone = registerOutput<String>('timeZone');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
