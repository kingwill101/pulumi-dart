// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_job_schedule_job_schedule_args_doc}
/// The set of arguments for JobSchedule.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_job_schedule_job_schedule_args_doc}
class JobScheduleArgs {
  /// The starting mode of the Stream Analytics Job. Possible values are `JobStartTime`, `CustomTime` and `LastOutputEventTime`.
  ///
  /// > **Note:** Setting `start_mode` to `LastOutputEventTime` is only possible if the job had been previously started and produced output.
  final pulumi.Input<String> startMode;
  /// The time in ISO8601 format at which the Stream Analytics Job should be started e.g. `2022-04-01T00:00:00Z`. This property can only be specified if `start_mode` is set to `CustomTime`
  final pulumi.Input<String>? startTime;
  /// The ID of the Stream Analytics Job that should be scheduled or started. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobId;

  /// Creates a new [JobScheduleArgs].
  /// [startMode] The starting mode of the Stream Analytics Job. Possible values are `JobStartTime`, `CustomTime` and `LastOutputEventTime`.
  /// [startTime] The time in ISO8601 format at which the Stream Analytics Job should be started e.g. `2022-04-01T00:00:00Z`. This property can only be specified if `start_mode` is set to `CustomTime`
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job that should be scheduled or started. Changing this forces a new resource to be created.
  JobScheduleArgs({
    required String startMode,
    String? startTime,
    required String streamAnalyticsJobId,
  }) :
      startMode = pulumi.Input.asInput<String>(startMode),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      streamAnalyticsJobId = pulumi.Input.asInput<String>(streamAnalyticsJobId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startMode': startMode,
      'startTime': ?startTime,
      'streamAnalyticsJobId': streamAnalyticsJobId,
    };
  }

  factory JobScheduleArgs.fromMap(Map<String, dynamic> map) {
    return JobScheduleArgs(
      startMode: map['startMode'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      streamAnalyticsJobId: map['streamAnalyticsJobId'] as String,
    );
  }
}

