// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output {
  /// The local path to the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job. LocalPath is an absolute path for the output data. Defaults to `/opt/ml/processing/output`.
  final pulumi.Input<String>? localPath;
  /// Whether to upload the results of the monitoring job continuously or after the job completes. Valid values are `Continuous` or `EndOfJob`
  final pulumi.Input<String>? s3UploadMode;
  /// A URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output].
  /// [localPath] The local path to the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job. LocalPath is an absolute path for the output data. Defaults to `/opt/ml/processing/output`.
  /// [s3UploadMode] Whether to upload the results of the monitoring job continuously or after the job completes. Valid values are `Continuous` or `EndOfJob`
  /// [s3Uri] A URI that identifies the Amazon S3 storage location where Amazon SageMaker AI saves the results of a monitoring job.
  const DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output({
    this.localPath,
    this.s3UploadMode,
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localPath': ?localPath,
      's3UploadMode': ?s3UploadMode,
      's3Uri': s3Uri,
    };
  }

  factory DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output.fromMap(Map<String, dynamic> map) {
    return DataQualityJobDefinitionDataQualityJobOutputConfigMonitoringOutputsS3Output(
      localPath: (() { final guardedValue = map['localPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3UploadMode: (() { final guardedValue = map['s3UploadMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}

