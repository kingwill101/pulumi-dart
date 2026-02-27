// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_create_pipeline_job_request.dart';

/// The set of arguments for Schedule.
class ScheduleAiplatformV1beta1Args {
  /// Optional. Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool>? allowQueueing;

  /// Request for PipelineService.CreatePipelineJob. CreatePipelineJobRequest.parent field is required (format: projects/{project}/locations/{location}).
  final pulumi.Input<GoogleCloudAiplatformV1beta1CreatePipelineJobRequest>?
      createPipelineJobRequest;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  final pulumi.Input<String>? cron;

  /// User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Optional. Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String>? location;

  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  final pulumi.Input<String> maxConcurrentRunCount;

  /// Optional. Maximum run count of the schedule. If specified, The schedule will be completed when either started_run_count >= max_run_count or when end_time is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? maxRunCount;

  /// Immutable. The resource name of the Schedule.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  final pulumi.Input<String>? startTime;

  ScheduleAiplatformV1beta1Args({
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
      map['createPipelineJobRequest'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1CreatePipelineJobRequest,
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

  factory ScheduleAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return ScheduleAiplatformV1beta1Args(
      allowQueueing: pulumi.Input.asOptionalInput<bool>(map['allowQueueing']),
      createPipelineJobRequest: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1CreatePipelineJobRequest>(
          map['createPipelineJobRequest']),
      cron: pulumi.Input.asOptionalInput<String>(map['cron']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      maxConcurrentRunCount:
          pulumi.Input.asInput<String>(map['maxConcurrentRunCount']),
      maxRunCount: pulumi.Input.asOptionalInput<String>(map['maxRunCount']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      startTime: pulumi.Input.asOptionalInput<String>(map['startTime']),
    );
  }
}
