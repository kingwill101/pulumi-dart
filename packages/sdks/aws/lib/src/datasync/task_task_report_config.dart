// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_task_report_config_report_overrides.dart';
import 'task_task_report_config_s3_destination.dart';

class TaskTaskReportConfig {
  /// Specifies the type of task report you'd like. Valid values: `SUMMARY_ONLY` and `STANDARD`.
  final pulumi.Input<String>? outputType;
  /// Specifies whether you want your task report to include only what went wrong with your transfer or a list of what succeeded and didn't. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  final pulumi.Input<String>? reportLevel;
  /// Configuration block containing the configuration of the reporting level for aspects of your task report. See `reportOverrides` below.
  final pulumi.Input<TaskTaskReportConfigReportOverrides>? reportOverrides;
  /// Configuration block containing the configuration for the Amazon S3 bucket where DataSync uploads your task report. See `s3Destination` below.
  final pulumi.Input<TaskTaskReportConfigS3Destination> s3Destination;
  /// Specifies whether your task report includes the new version of each object transferred into an S3 bucket. This only applies if you enable versioning on your bucket. Keep in mind that setting this to INCLUDE can increase the duration of your task execution. Valid values: `INCLUDE` and `NONE`.
  final pulumi.Input<String>? s3ObjectVersioning;

  /// Creates a new [TaskTaskReportConfig].
  /// [outputType] Specifies the type of task report you'd like. Valid values: `SUMMARY_ONLY` and `STANDARD`.
  /// [reportLevel] Specifies whether you want your task report to include only what went wrong with your transfer or a list of what succeeded and didn't. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  /// [reportOverrides] Configuration block containing the configuration of the reporting level for aspects of your task report. See `reportOverrides` below.
  /// [s3Destination] Configuration block containing the configuration for the Amazon S3 bucket where DataSync uploads your task report. See `s3Destination` below.
  /// [s3ObjectVersioning] Specifies whether your task report includes the new version of each object transferred into an S3 bucket. This only applies if you enable versioning on your bucket. Keep in mind that setting this to INCLUDE can increase the duration of your task execution. Valid values: `INCLUDE` and `NONE`.
  const TaskTaskReportConfig({
    this.outputType,
    this.reportLevel,
    this.reportOverrides,
    required this.s3Destination,
    this.s3ObjectVersioning,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputType': ?outputType,
      'reportLevel': ?reportLevel,
      'reportOverrides': ?pulumi.Input.mapOptionalInputValue<TaskTaskReportConfigReportOverrides, Map<String, dynamic>>(reportOverrides, (value) => value.toMap()),
      's3Destination': pulumi.Input.mapInputValue<TaskTaskReportConfigS3Destination, Map<String, dynamic>>(s3Destination, (value) => value.toMap()),
      's3ObjectVersioning': ?s3ObjectVersioning,
    };
  }

  factory TaskTaskReportConfig.fromMap(Map<String, dynamic> map) {
    return TaskTaskReportConfig(
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportLevel: (() { final guardedValue = map['reportLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportOverrides: (() { final guardedValue = map['reportOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskTaskReportConfigReportOverrides.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Destination: pulumi.Input.fromValue(TaskTaskReportConfigS3Destination.fromMap((map['s3Destination']! as Map).cast<String, dynamic>())),
      s3ObjectVersioning: (() { final guardedValue = map['s3ObjectVersioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
