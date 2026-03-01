// ignore_for_file: unused_element, unnecessary_cast

import 'task_task_report_config_report_overrides.dart';
import 'task_task_report_config_s3_destination.dart';

class TaskTaskReportConfig {
  /// Specifies the type of task report you'd like. Valid values: `SUMMARY_ONLY` and `STANDARD`.
  final String? outputType;

  /// Specifies whether you want your task report to include only what went wrong with your transfer or a list of what succeeded and didn't. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  final String? reportLevel;

  /// Configuration block containing the configuration of the reporting level for aspects of your task report. See `report_overrides` below.
  final TaskTaskReportConfigReportOverrides? reportOverrides;

  /// Configuration block containing the configuration for the Amazon S3 bucket where DataSync uploads your task report. See `s3_destination` below.
  final TaskTaskReportConfigS3Destination s3Destination;

  /// Specifies whether your task report includes the new version of each object transferred into an S3 bucket. This only applies if you enable versioning on your bucket. Keep in mind that setting this to INCLUDE can increase the duration of your task execution. Valid values: `INCLUDE` and `NONE`.
  final String? s3ObjectVersioning;

  /// Creates a new [TaskTaskReportConfig].
  /// [outputType] Specifies the type of task report you'd like. Valid values: `SUMMARY_ONLY` and `STANDARD`.
  /// [reportLevel] Specifies whether you want your task report to include only what went wrong with your transfer or a list of what succeeded and didn't. Valid values: `ERRORS_ONLY` and `SUCCESSES_AND_ERRORS`.
  /// [reportOverrides] Configuration block containing the configuration of the reporting level for aspects of your task report. See `report_overrides` below.
  /// [s3Destination] Configuration block containing the configuration for the Amazon S3 bucket where DataSync uploads your task report. See `s3_destination` below.
  /// [s3ObjectVersioning] Specifies whether your task report includes the new version of each object transferred into an S3 bucket. This only applies if you enable versioning on your bucket. Keep in mind that setting this to INCLUDE can increase the duration of your task execution. Valid values: `INCLUDE` and `NONE`.
  TaskTaskReportConfig({
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
      'reportOverrides': ?reportOverrides == null
          ? null
          : reportOverrides!.toMap(),
      's3Destination': s3Destination.toMap(),
      's3ObjectVersioning': ?s3ObjectVersioning,
    };
  }

  factory TaskTaskReportConfig.fromMap(Map<String, dynamic> map) {
    return TaskTaskReportConfig(
      outputType: map['outputType'] == null
          ? null
          : map['outputType'] as String,
      reportLevel: map['reportLevel'] == null
          ? null
          : map['reportLevel'] as String,
      reportOverrides: map['reportOverrides'] == null
          ? null
          : TaskTaskReportConfigReportOverrides.fromMap(
              (map['reportOverrides'] as Map).cast<String, dynamic>(),
            ),
      s3Destination: TaskTaskReportConfigS3Destination.fromMap(
        (map['s3Destination'] as Map).cast<String, dynamic>(),
      ),
      s3ObjectVersioning: map['s3ObjectVersioning'] == null
          ? null
          : map['s3ObjectVersioning'] as String,
    );
  }
}
