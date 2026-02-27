import 'package:pulumi/pulumi.dart';
import '../schedule_create_notebook_execution_job_request/schedule_create_notebook_execution_job_request.dart';
import 'schedule_args.dart';

/// 'Colab Enterprise Notebook Execution Schedules.'
///
///
/// To get more information about Schedule, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.schedules)
/// * How-to Guides
/// * [Schedule a notebook run](https://cloud.google.com/colab/docs/schedule-notebook-run)
///
/// ## Example Usage
///
/// ### Colab Schedule Basic
///
///
///
/// ### Colab Schedule Paused
///
///
///
/// ### Colab Schedule Full
///
///
///
///
/// ## Import
///
/// Schedule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/schedules/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Schedule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/schedule:Schedule default projects/{{project}}/locations/{{location}}/schedules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/schedule:Schedule default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/schedule:Schedule default {{location}}/{{name}}
/// ```
class Schedule extends CustomResource {
  /// Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  late final Output<bool?> allowQueueing;

  /// Request for google_colab_notebook_execution.
  /// Structure is documented below.
  late final Output<ScheduleCreateNotebookExecutionJobRequest>
      createNotebookExecutionJobRequest;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  late final Output<String> cron;

  /// Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  late final Output<String?> desiredState;

  /// Required. The display name of the Schedule.
  late final Output<String> displayName;

  /// Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  late final Output<String?> endTime;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final Output<String> location;

  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  late final Output<String> maxConcurrentRunCount;

  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount >= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  late final Output<String?> maxRunCount;

  /// The resource name of the Schedule
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  late final Output<String> startTime;

  /// Output only. The state of the schedule.
  late final Output<String> state;

  Schedule(
    String name, {
    ScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:colab/schedule:Schedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowQueueing = registerOutput<bool?>('allowQueueing');
    this.createNotebookExecutionJobRequest =
        registerOutput<ScheduleCreateNotebookExecutionJobRequest>(
            'createNotebookExecutionJobRequest');
    this.cron = registerOutput<String>('cron');
    this.desiredState = registerOutput<String?>('desiredState');
    this.displayName = registerOutput<String>('displayName');
    this.endTime = registerOutput<String?>('endTime');
    this.location = registerOutput<String>('location');
    this.maxConcurrentRunCount =
        registerOutput<String>('maxConcurrentRunCount');
    this.maxRunCount = registerOutput<String?>('maxRunCount');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
  }
}
