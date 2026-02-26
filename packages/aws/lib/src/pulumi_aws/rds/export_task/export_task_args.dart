// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../export_task_timeouts/export_task_timeouts.dart';

/// The set of arguments for ExportTask.
class ExportTaskArgs {
  /// Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  final Input<List<String>>? exportOnlies;

  /// Unique identifier for the snapshot export task.
  final Input<String> exportTaskIdentifier;

  /// ARN of the IAM role to use for writing to the Amazon S3 bucket.
  final Input<String> iamRoleArn;

  /// ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  final Input<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the Amazon S3 bucket to export the snapshot to.
  final Input<String> s3BucketName;

  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  final Input<String>? s3Prefix;

  /// Amazon Resource Name (ARN) of the snapshot to export.
  ///
  /// The following arguments are optional:
  final Input<String> sourceArn;
  final Input<ExportTaskTimeouts>? timeouts;

  ExportTaskArgs({
    this.exportOnlies,
    required this.exportTaskIdentifier,
    required this.iamRoleArn,
    required this.kmsKeyId,
    this.region,
    required this.s3BucketName,
    this.s3Prefix,
    required this.sourceArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exportOnliesValue = exportOnlies;
    if (exportOnliesValue != null) {
      map['exportOnlies'] = exportOnliesValue;
    }
    map['exportTaskIdentifier'] = exportTaskIdentifier;
    map['iamRoleArn'] = iamRoleArn;
    map['kmsKeyId'] = kmsKeyId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['s3BucketName'] = s3BucketName;
    final s3PrefixValue = s3Prefix;
    if (s3PrefixValue != null) {
      map['s3Prefix'] = s3PrefixValue;
    }
    map['sourceArn'] = sourceArn;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] =
          Input.mapOptionalInputValue<ExportTaskTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ExportTaskArgs.fromMap(Map<String, dynamic> map) {
    return ExportTaskArgs(
      exportOnlies: Input.asOptionalInput<List<String>>(map['exportOnlies']),
      exportTaskIdentifier: Input.asInput<String>(map['exportTaskIdentifier']),
      iamRoleArn: Input.asInput<String>(map['iamRoleArn']),
      kmsKeyId: Input.asInput<String>(map['kmsKeyId']),
      region: Input.asOptionalInput<String>(map['region']),
      s3BucketName: Input.asInput<String>(map['s3BucketName']),
      s3Prefix: Input.asOptionalInput<String>(map['s3Prefix']),
      sourceArn: Input.asInput<String>(map['sourceArn']),
      timeouts: Input.asOptionalInput<ExportTaskTimeouts>(map['timeouts']),
    );
  }
}
