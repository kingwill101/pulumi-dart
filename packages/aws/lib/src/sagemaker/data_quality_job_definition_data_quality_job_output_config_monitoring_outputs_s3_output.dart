// ignore_for_file: unused_element, unnecessary_cast

class DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output {
  /// The local path to the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job. LocalPath is an absolute path for the output data. Defaults to `/opt/ml/processing/output`.
  final String? localPath;

  /// Whether to upload the results of the monitoring job continuously or after the job completes. Valid values are `Continuous` or `EndOfJob`
  final String? s3UploadMode;

  /// A URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final String s3Uri;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output].
  /// [localPath] The local path to the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job. LocalPath is an absolute path for the output data. Defaults to `/opt/ml/processing/output`.
  /// [s3UploadMode] Whether to upload the results of the monitoring job continuously or after the job completes. Valid values are `Continuous` or `EndOfJob`
  /// [s3Uri] A URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output({
    this.localPath,
    this.s3UploadMode,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final localPathValue = localPath;
    if (localPathValue != null) {
      map['localPath'] = localPathValue;
    }
    final s3UploadModeValue = s3UploadMode;
    if (s3UploadModeValue != null) {
      map['s3UploadMode'] = s3UploadModeValue;
    }
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output.fromMap(
      Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output(
      localPath: map['localPath'] == null ? null : map['localPath'] as String,
      s3UploadMode:
          map['s3UploadMode'] == null ? null : map['s3UploadMode'] as String,
      s3Uri: map['s3Uri'] as String,
    );
  }
}
