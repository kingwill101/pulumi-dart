// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_history_delivery_jobs_job_job_status.dart';

class GetHistoryDeliveryJobsJob {
  /// The time when the task was created.
  final String createTime;
  /// The time when the task ended.
  final String endTime;
  final String historyDeliveryJobId;
  /// The home region of the trail.
  final String homeRegion;
  /// The ID of the History Delivery Job.
  final String id;
  /// Detail status of delivery job.
  final List<GetHistoryDeliveryJobsJobJobStatus> jobStatuses;
  /// The time when the task started.
  final String startTime;
  /// The status of the task. Valid values: `0`, `1`, `2`, `3`. `0`: The task is initializing. `1`: The task is delivering historical events. `2`: The delivery of historical events is complete. `3`: The task fails.
  final int status;
  /// The name of the trail.
  final String trailName;
  /// The time when the task was updated.
  final String updatedTime;

  /// Creates a new [GetHistoryDeliveryJobsJob].
  /// [createTime] The time when the task was created.
  /// [endTime] The time when the task ended.
  /// [historyDeliveryJobId] Required.
  /// [homeRegion] The home region of the trail.
  /// [id] The ID of the History Delivery Job.
  /// [jobStatuses] Detail status of delivery job.
  /// [startTime] The time when the task started.
  /// [status] The status of the task. Valid values: `0`, `1`, `2`, `3`. `0`: The task is initializing. `1`: The task is delivering historical events. `2`: The delivery of historical events is complete. `3`: The task fails.
  /// [trailName] The name of the trail.
  /// [updatedTime] The time when the task was updated.
  GetHistoryDeliveryJobsJob({
    required this.createTime,
    required this.endTime,
    required this.historyDeliveryJobId,
    required this.homeRegion,
    required this.id,
    required this.jobStatuses,
    required this.startTime,
    required this.status,
    required this.trailName,
    required this.updatedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endTime': endTime,
      'historyDeliveryJobId': historyDeliveryJobId,
      'homeRegion': homeRegion,
      'id': id,
      'jobStatuses': pulumi.Input.encodeList<GetHistoryDeliveryJobsJobJobStatus, Map<String, dynamic>>(jobStatuses, (value) => value.toMap()),
      'startTime': startTime,
      'status': status,
      'trailName': trailName,
      'updatedTime': updatedTime,
    };
  }

  factory GetHistoryDeliveryJobsJob.fromMap(Map<String, dynamic> map) {
    return GetHistoryDeliveryJobsJob(
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      historyDeliveryJobId: map['historyDeliveryJobId'] as String,
      homeRegion: map['homeRegion'] as String,
      id: map['id'] as String,
      jobStatuses: pulumi.Input.decodeList<GetHistoryDeliveryJobsJobJobStatus>(map['jobStatuses'], (value) => GetHistoryDeliveryJobsJobJobStatus.fromMap((value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
      status: map['status'] as int,
      trailName: map['trailName'] as String,
      updatedTime: map['updatedTime'] as String,
    );
  }
}

