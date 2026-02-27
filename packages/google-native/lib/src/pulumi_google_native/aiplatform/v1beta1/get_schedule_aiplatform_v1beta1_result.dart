// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_create_pipeline_job_request_response.dart';
import 'google_cloud_aiplatform_v1beta1_schedule_run_response_response.dart';

/// Result data returned by getSchedule.
class GetScheduleAiplatformV1beta1Result {
  /// Optional. Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final bool allowQueueing;

  /// Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  final bool catchUp;

  /// Request for PipelineService.CreatePipelineJob. CreatePipelineJobRequest.parent field is required (format: projects/{project}/locations/{location}).
  final GoogleCloudAiplatformV1beta1CreatePipelineJobRequestResponse
      createPipelineJobRequest;

  /// Timestamp when this Schedule was created.
  final String createTime;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  final String cron;

  /// User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;

  /// Optional. Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final String endTime;

  /// Timestamp when this Schedule was last paused. Unset if never paused.
  final String lastPauseTime;

  /// Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  final String lastResumeTime;

  /// Response of the last scheduled run. This is the response for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable). Unset if no run has been scheduled yet.
  final GoogleCloudAiplatformV1beta1ScheduleRunResponseResponse
      lastScheduledRunResponse;

  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  final String maxConcurrentRunCount;

  /// Optional. Maximum run count of the schedule. If specified, The schedule will be completed when either started_run_count >= max_run_count or when end_time is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final String maxRunCount;

  /// Immutable. The resource name of the Schedule.
  final String name;

  /// Timestamp when this Schedule should schedule the next run. Having a next_run_time in the past means the runs are being started behind schedule.
  final String nextRunTime;

  /// Optional. Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  final String startTime;

  /// The number of runs started by this schedule.
  final String startedRunCount;

  /// The state of this Schedule.
  final String state;

  /// Timestamp when this Schedule was updated.
  final String updateTime;

  GetScheduleAiplatformV1beta1Result({
    required this.allowQueueing,
    required this.catchUp,
    required this.createPipelineJobRequest,
    required this.createTime,
    required this.cron,
    required this.displayName,
    required this.endTime,
    required this.lastPauseTime,
    required this.lastResumeTime,
    required this.lastScheduledRunResponse,
    required this.maxConcurrentRunCount,
    required this.maxRunCount,
    required this.name,
    required this.nextRunTime,
    required this.startTime,
    required this.startedRunCount,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowQueueing'] = allowQueueing;
    map['catchUp'] = catchUp;
    map['createPipelineJobRequest'] = createPipelineJobRequest.toMap();
    map['createTime'] = createTime;
    map['cron'] = cron;
    map['displayName'] = displayName;
    map['endTime'] = endTime;
    map['lastPauseTime'] = lastPauseTime;
    map['lastResumeTime'] = lastResumeTime;
    map['lastScheduledRunResponse'] = lastScheduledRunResponse.toMap();
    map['maxConcurrentRunCount'] = maxConcurrentRunCount;
    map['maxRunCount'] = maxRunCount;
    map['name'] = name;
    map['nextRunTime'] = nextRunTime;
    map['startTime'] = startTime;
    map['startedRunCount'] = startedRunCount;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetScheduleAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetScheduleAiplatformV1beta1Result(
      allowQueueing: map['allowQueueing'] as bool,
      catchUp: map['catchUp'] as bool,
      createPipelineJobRequest:
          GoogleCloudAiplatformV1beta1CreatePipelineJobRequestResponse.fromMap(
              (map['createPipelineJobRequest'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      cron: map['cron'] as String,
      displayName: map['displayName'] as String,
      endTime: map['endTime'] as String,
      lastPauseTime: map['lastPauseTime'] as String,
      lastResumeTime: map['lastResumeTime'] as String,
      lastScheduledRunResponse:
          GoogleCloudAiplatformV1beta1ScheduleRunResponseResponse.fromMap(
              (map['lastScheduledRunResponse'] as Map).cast<String, dynamic>()),
      maxConcurrentRunCount: map['maxConcurrentRunCount'] as String,
      maxRunCount: map['maxRunCount'] as String,
      name: map['name'] as String,
      nextRunTime: map['nextRunTime'] as String,
      startTime: map['startTime'] as String,
      startedRunCount: map['startedRunCount'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
