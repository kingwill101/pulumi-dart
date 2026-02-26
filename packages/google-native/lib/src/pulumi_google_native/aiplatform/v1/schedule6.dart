import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_create_pipeline_job_request_response.dart';
import 'google_cloud_aiplatform_v1_schedule_run_response_response.dart';
import 'schedule_args.dart';

/// Creates a Schedule.
class Schedule6 extends CustomResource {
  /// Optional. Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  late final Output<bool> allowQueueing;

  /// Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  late final Output<bool> catchUp;

  /// Request for PipelineService.CreatePipelineJob. CreatePipelineJobRequest.parent field is required (format: projects/{project}/locations/{location}).
  late final Output<GoogleCloudAiplatformV1CreatePipelineJobRequestResponse>
      createPipelineJobRequest;

  /// Timestamp when this Schedule was created.
  late final Output<String> createTime;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  late final Output<String> cron;

  /// User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Optional. Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  late final Output<String> endTime;

  /// Timestamp when this Schedule was last paused. Unset if never paused.
  late final Output<String> lastPauseTime;

  /// Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  late final Output<String> lastResumeTime;

  /// Response of the last scheduled run. This is the response for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable). Unset if no run has been scheduled yet.
  late final Output<GoogleCloudAiplatformV1ScheduleRunResponseResponse>
      lastScheduledRunResponse;
  late final Output<String> location;

  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  late final Output<String> maxConcurrentRunCount;

  /// Optional. Maximum run count of the schedule. If specified, The schedule will be completed when either started_run_count >= max_run_count or when end_time is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  late final Output<String> maxRunCount;

  /// Immutable. The resource name of the Schedule.
  late final Output<String> name;

  /// Timestamp when this Schedule should schedule the next run. Having a next_run_time in the past means the runs are being started behind schedule.
  late final Output<String> nextRunTime;
  late final Output<String> project;

  /// Optional. Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  late final Output<String> startTime;

  /// The number of runs started by this schedule.
  late final Output<String> startedRunCount;

  /// The state of this Schedule.
  late final Output<String> state;

  /// Timestamp when this Schedule was updated.
  late final Output<String> updateTime;

  Schedule6(
    String name, {
    ScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:Schedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowQueueing = Output.createUnknown<bool>();
    this.catchUp = Output.createUnknown<bool>();
    this.createPipelineJobRequest = Output.createUnknown<
        GoogleCloudAiplatformV1CreatePipelineJobRequestResponse>();
    this.createTime = Output.createUnknown<String>();
    this.cron = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.endTime = Output.createUnknown<String>();
    this.lastPauseTime = Output.createUnknown<String>();
    this.lastResumeTime = Output.createUnknown<String>();
    this.lastScheduledRunResponse = Output.createUnknown<
        GoogleCloudAiplatformV1ScheduleRunResponseResponse>();
    this.location = Output.createUnknown<String>();
    this.maxConcurrentRunCount = Output.createUnknown<String>();
    this.maxRunCount = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nextRunTime = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.startedRunCount = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
