// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output {
  /// Local path to the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final pulumi.Input<String> localPath;
  /// Whether to upload the results of the monitoring job continuously or after the job completes. Valid values: `Continuous`, `EndOfJob`.
  final pulumi.Input<String>? s3UploadMode;
  /// URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output].
  /// [localPath] Local path to the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  /// [s3UploadMode] Whether to upload the results of the monitoring job continuously or after the job completes. Valid values: `Continuous`, `EndOfJob`.
  /// [s3Uri] URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  const MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output({
    required this.localPath,
    this.s3UploadMode,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localPath': localPath,
      's3UploadMode': ?s3UploadMode,
      's3Uri': s3Uri,
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output(
      localPath: pulumi.Input.fromValue(map['localPath'] as String),
      s3UploadMode: (() { final guardedValue = map['s3UploadMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}

