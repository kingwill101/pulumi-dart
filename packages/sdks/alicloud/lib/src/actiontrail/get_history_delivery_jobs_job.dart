// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_history_delivery_jobs_job_job_status.dart';

class GetHistoryDeliveryJobsJob {
  /// The time when the task was created.
  final pulumi.Input<String> createTime;
  /// The time when the task ended.
  final pulumi.Input<String> endTime;
  final pulumi.Input<String> historyDeliveryJobId;
  /// The home region of the trail.
  final pulumi.Input<String> homeRegion;
  /// The ID of the History Delivery Job.
  final pulumi.Input<String> id;
  /// Detail status of delivery job.
  final pulumi.Input<List<GetHistoryDeliveryJobsJobJobStatus>> jobStatuses;
  /// The time when the task started.
  final pulumi.Input<String> startTime;
  /// The status of the task. Valid values: `0`, `1`, `2`, `3`. `0`: The task is initializing. `1`: The task is delivering historical events. `2`: The delivery of historical events is complete. `3`: The task fails.
  final pulumi.Input<int> status;
  /// The name of the trail.
  final pulumi.Input<String> trailName;
  /// The time when the task was updated.
  final pulumi.Input<String> updatedTime;

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
    required String createTime,
    required String endTime,
    required String historyDeliveryJobId,
    required String homeRegion,
    required String id,
    required List<GetHistoryDeliveryJobsJobJobStatus> jobStatuses,
    required String startTime,
    required int status,
    required String trailName,
    required String updatedTime,
  }) :

      createTime = createTime.input(),
      endTime = endTime.input(),
      historyDeliveryJobId = historyDeliveryJobId.input(),
      homeRegion = homeRegion.input(),
      id = id.input(),
      jobStatuses = jobStatuses.input(),
      startTime = startTime.input(),
      status = status.input(),
      trailName = trailName.input(),
      updatedTime = updatedTime.input();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'endTime': endTime,
      'historyDeliveryJobId': historyDeliveryJobId,
      'homeRegion': homeRegion,
      'id': id,
      'jobStatuses': pulumi.Input.mapInputValue<List<GetHistoryDeliveryJobsJobJobStatus>, List<Map<String, dynamic>>>(jobStatuses, (value) => pulumi.Input.encodeList<GetHistoryDeliveryJobsJobJobStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
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

