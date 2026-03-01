// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_execution_status_latest_job.dart';

class TaskExecutionStatus {
  /// (Output)
  /// latest job execution.
  /// Structure is documented below.
  final List<TaskExecutionStatusLatestJob>? latestJobs;

  /// (Output)
  /// Last update time of the status.
  final String? updateTime;

  /// Creates a new [TaskExecutionStatus].
  /// [latestJobs] (Output)
  /// [updateTime] (Output)
  TaskExecutionStatus({this.latestJobs, this.updateTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestJobs': ?latestJobs == null
          ? null
          : pulumi.Input.encodeList<
              TaskExecutionStatusLatestJob,
              Map<String, dynamic>
            >(latestJobs!, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory TaskExecutionStatus.fromMap(Map<String, dynamic> map) {
    return TaskExecutionStatus(
      latestJobs: map['latestJobs'] == null
          ? null
          : pulumi.Input.decodeList<TaskExecutionStatusLatestJob>(
              map['latestJobs'],
              (value) => TaskExecutionStatusLatestJob.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      updateTime: map['updateTime'] == null
          ? null
          : map['updateTime'] as String,
    );
  }
}
