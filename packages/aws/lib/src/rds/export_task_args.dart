// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_task_timeouts.dart';

/// {@template pulumi_rds_export_task_export_task_args_doc}
/// The set of arguments for ExportTask.
/// {@endtemplate}
/// {@macro pulumi_rds_export_task_export_task_args_doc}
class ExportTaskArgs {
  /// Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  final pulumi.Input<List<String>>? exportOnlies;
  /// Unique identifier for the snapshot export task.
  final pulumi.Input<String> exportTaskIdentifier;
  /// ARN of the IAM role to use for writing to the Amazon S3 bucket.
  final pulumi.Input<String> iamRoleArn;
  /// ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  final pulumi.Input<String> kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the Amazon S3 bucket to export the snapshot to.
  final pulumi.Input<String> s3BucketName;
  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  final pulumi.Input<String>? s3Prefix;
  /// Amazon Resource Name (ARN) of the snapshot to export.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> sourceArn;
  final pulumi.Input<ExportTaskTimeouts>? timeouts;

  /// Creates a new [ExportTaskArgs].
  /// [exportOnlies] Data to be exported from the snapshot. If this parameter is not provided, all the snapshot data is exported. Valid values are documented in the [AWS StartExportTask API documentation](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartExportTask.html#API_StartExportTask_RequestParameters).
  /// [exportTaskIdentifier] Unique identifier for the snapshot export task.
  /// [iamRoleArn] ARN of the IAM role to use for writing to the Amazon S3 bucket.
  /// [kmsKeyId] ID of the Amazon Web Services KMS key to use to encrypt the snapshot.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketName] Name of the Amazon S3 bucket to export the snapshot to.
  /// [s3Prefix] Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  /// [sourceArn] Amazon Resource Name (ARN) of the snapshot to export.
  /// [timeouts] Optional.
  ExportTaskArgs({
    List<String>? exportOnlies,
    required String exportTaskIdentifier,
    required String iamRoleArn,
    required String kmsKeyId,
    String? region,
    required String s3BucketName,
    String? s3Prefix,
    required String sourceArn,
    ExportTaskTimeouts? timeouts,
  }) :
      exportOnlies = pulumi.Input.asOptionalInput<List<String>>(exportOnlies),
      exportTaskIdentifier = pulumi.Input.asInput<String>(exportTaskIdentifier),
      iamRoleArn = pulumi.Input.asInput<String>(iamRoleArn),
      kmsKeyId = pulumi.Input.asInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      s3BucketName = pulumi.Input.asInput<String>(s3BucketName),
      s3Prefix = pulumi.Input.asOptionalInput<String>(s3Prefix),
      sourceArn = pulumi.Input.asInput<String>(sourceArn),
      timeouts = pulumi.Input.asOptionalInput<ExportTaskTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportOnlies': ?exportOnlies,
      'exportTaskIdentifier': exportTaskIdentifier,
      'iamRoleArn': iamRoleArn,
      'kmsKeyId': kmsKeyId,
      'region': ?region,
      's3BucketName': s3BucketName,
      's3Prefix': ?s3Prefix,
      'sourceArn': sourceArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ExportTaskTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ExportTaskArgs.fromMap(Map<String, dynamic> map) {
    return ExportTaskArgs(
      exportOnlies: map['exportOnlies'] == null ? null : (map['exportOnlies'] as List).cast<String>(),
      exportTaskIdentifier: map['exportTaskIdentifier'] as String,
      iamRoleArn: map['iamRoleArn'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      s3BucketName: map['s3BucketName'] as String,
      s3Prefix: map['s3Prefix'] == null ? null : map['s3Prefix'] as String,
      sourceArn: map['sourceArn'] as String,
      timeouts: map['timeouts'] == null ? null : ExportTaskTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

