import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_response.dart';
import 'execution_template_response.dart';
import 'schedule_args.dart';

/// Creates a new Scheduled Notebook in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Schedule extends pulumi.CustomResource {
  /// Time the schedule was created.
  late final pulumi.Output<String> createTime;

  /// Cron-tab formatted schedule by which the job will execute. Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED` = every Wednesday More examples: https://crontab.guru/examples.html
  late final pulumi.Output<String> cronSchedule;

  /// A brief description of this environment.
  late final pulumi.Output<String> description;

  /// Display name used for UI purposes. Name can only contain alphanumeric characters, hyphens `-`, and underscores `_`.
  late final pulumi.Output<String> displayName;

  /// Notebook Execution Template corresponding to this schedule.
  late final pulumi.Output<ExecutionTemplateResponse> executionTemplate;
  late final pulumi.Output<String> location;

  /// The name of this schedule. Format: `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The most recent execution names triggered from this schedule and their corresponding states.
  late final pulumi.Output<List<ExecutionResponse>> recentExecutions;

  /// Required. User-defined unique ID of this schedule.
  late final pulumi.Output<String> scheduleId;
  late final pulumi.Output<String> state;

  /// Timezone on which the cron_schedule. The value of this field must be a time zone name from the tz database. TZ Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones Note that some time zones include a provision for daylight savings time. The rules for daylight saving time are determined by the chosen tz. For UTC use the string "utc". If a time zone is not specified, the default will be in UTC (also known as GMT).
  late final pulumi.Output<String> timeZone;

  /// Time the schedule was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_notebooks_v1_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v1:Schedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
