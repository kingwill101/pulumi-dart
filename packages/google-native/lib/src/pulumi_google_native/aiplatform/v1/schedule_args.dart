// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1_create_pipeline_job_request.dart';

/// The set of arguments for Schedule.
class ScheduleArgs {
  /// Optional. Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final Input<bool>? allowQueueing;

  /// Request for PipelineService.CreatePipelineJob. CreatePipelineJobRequest.parent field is required (format: projects/{project}/locations/{location}).
  final Input<GoogleCloudAiplatformV1CreatePipelineJobRequest>?
      createPipelineJobRequest;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  final Input<String>? cron;

  /// User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final Input<String> displayName;

  /// Optional. Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final Input<String>? endTime;
  final Input<String>? location;

  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  final Input<String> maxConcurrentRunCount;

  /// Optional. Maximum run count of the schedule. If specified, The schedule will be completed when either started_run_count >= max_run_count or when end_time is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final Input<String>? maxRunCount;

  /// Immutable. The resource name of the Schedule.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  final Input<String>? startTime;

  ScheduleArgs({
    this.allowQueueing,
    this.createPipelineJobRequest,
    this.cron,
    required this.displayName,
    this.endTime,
    this.location,
    required this.maxConcurrentRunCount,
    this.maxRunCount,
    this.name,
    this.project,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowQueueingValue = allowQueueing;
    if (allowQueueingValue != null) {
      map['allowQueueing'] = allowQueueingValue;
    }
    final createPipelineJobRequestValue = createPipelineJobRequest;
    if (createPipelineJobRequestValue != null) {
      map['createPipelineJobRequest'] = Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1CreatePipelineJobRequest,
              Map<String, dynamic>>(
          createPipelineJobRequestValue, (value) => value.toMap());
    }
    final cronValue = cron;
    if (cronValue != null) {
      map['cron'] = cronValue;
    }
    map['displayName'] = displayName;
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['maxConcurrentRunCount'] = maxConcurrentRunCount;
    final maxRunCountValue = maxRunCount;
    if (maxRunCountValue != null) {
      map['maxRunCount'] = maxRunCountValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      allowQueueing: Input.asOptionalInput<bool>(map['allowQueueing']),
      createPipelineJobRequest: Input.asOptionalInput<
              GoogleCloudAiplatformV1CreatePipelineJobRequest>(
          map['createPipelineJobRequest']),
      cron: Input.asOptionalInput<String>(map['cron']),
      displayName: Input.asInput<String>(map['displayName']),
      endTime: Input.asOptionalInput<String>(map['endTime']),
      location: Input.asOptionalInput<String>(map['location']),
      maxConcurrentRunCount:
          Input.asInput<String>(map['maxConcurrentRunCount']),
      maxRunCount: Input.asOptionalInput<String>(map['maxRunCount']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
    );
  }
}
