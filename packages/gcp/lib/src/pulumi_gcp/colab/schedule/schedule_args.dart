// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../schedule_create_notebook_execution_job_request/schedule_create_notebook_execution_job_request.dart';

/// The set of arguments for Schedule.
class ScheduleArgs {
  /// Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  final pulumi.Input<bool>? allowQueueing;

  /// Request for google_colab_notebook_execution.
  /// Structure is documented below.
  final pulumi.Input<ScheduleCreateNotebookExecutionJobRequest>
      createNotebookExecutionJobRequest;

  /// Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs.
  final pulumi.Input<String> cron;

  /// Desired state of the Colab Schedule. Set this field to `ACTIVE` to start/resume the schedule, and `PAUSED` to pause the schedule.
  final pulumi.Input<String>? desiredState;

  /// Required. The display name of the Schedule.
  final pulumi.Input<String> displayName;

  /// Timestamp after which no new runs can be scheduled. If specified, the schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String>? endTime;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String> location;

  /// Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the notebook execution jobs created by the requests.
  final pulumi.Input<String> maxConcurrentRunCount;

  /// Maximum run count of the schedule. If specified, The schedule will be completed when either startedRunCount >= maxRunCount or when endTime is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  final pulumi.Input<String>? maxRunCount;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The timestamp after which the first run can be scheduled. Defaults to the schedule creation time. Must be in the RFC 3339 (https://www.ietf.org/rfc/rfc3339.txt) format.
  final pulumi.Input<String>? startTime;

  ScheduleArgs({
    this.allowQueueing,
    required this.createNotebookExecutionJobRequest,
    required this.cron,
    this.desiredState,
    required this.displayName,
    this.endTime,
    required this.location,
    required this.maxConcurrentRunCount,
    this.maxRunCount,
    this.project,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowQueueingValue = allowQueueing;
    if (allowQueueingValue != null) {
      map['allowQueueing'] = allowQueueingValue;
    }
    map['createNotebookExecutionJobRequest'] = pulumi.Input.mapInputValue<
            ScheduleCreateNotebookExecutionJobRequest, Map<String, dynamic>>(
        createNotebookExecutionJobRequest, (value) => value.toMap());
    map['cron'] = cron;
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    map['displayName'] = displayName;
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    map['location'] = location;
    map['maxConcurrentRunCount'] = maxConcurrentRunCount;
    final maxRunCountValue = maxRunCount;
    if (maxRunCountValue != null) {
      map['maxRunCount'] = maxRunCountValue;
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
      allowQueueing: pulumi.Input.asOptionalInput<bool>(map['allowQueueing']),
      createNotebookExecutionJobRequest:
          pulumi.Input.asInput<ScheduleCreateNotebookExecutionJobRequest>(
              map['createNotebookExecutionJobRequest']),
      cron: pulumi.Input.asInput<String>(map['cron']),
      desiredState: pulumi.Input.asOptionalInput<String>(map['desiredState']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      location: pulumi.Input.asInput<String>(map['location']),
      maxConcurrentRunCount:
          pulumi.Input.asInput<String>(map['maxConcurrentRunCount']),
      maxRunCount: pulumi.Input.asOptionalInput<String>(map['maxRunCount']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      startTime: pulumi.Input.asOptionalInput<String>(map['startTime']),
    );
  }
}
