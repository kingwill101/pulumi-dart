// ignore_for_file: unused_element, unnecessary_cast

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output {
  /// Local path to the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final String localPath;

  /// Whether to upload the results of the monitoring job continuously or after the job completes. Valid values: `Continuous`, `EndOfJob`.
  final String? s3UploadMode;

  /// URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final String s3Uri;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output].
  /// [localPath] Local path to the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  /// [s3UploadMode] Whether to upload the results of the monitoring job continuously or after the job completes. Valid values: `Continuous`, `EndOfJob`.
  /// [s3Uri] URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output({
    required this.localPath,
    this.s3UploadMode,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localPath'] = localPath;
    final s3UploadModeValue = s3UploadMode;
    if (s3UploadModeValue != null) {
      map['s3UploadMode'] = s3UploadModeValue;
    }
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfigMonitoringOutputsS3Output(
      localPath: map['localPath'] as String,
      s3UploadMode:
          map['s3UploadMode'] == null ? null : map['s3UploadMode'] as String,
      s3Uri: map['s3Uri'] as String,
    );
  }
}
