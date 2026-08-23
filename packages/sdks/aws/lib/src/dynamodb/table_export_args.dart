// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_export_incremental_export_specification.dart';

/// {@template pulumi_dynamodb_table_export_table_export_args_doc}
/// The set of arguments for TableExport.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_table_export_table_export_args_doc}
class TableExportArgs {
  /// Format for the exported data. Valid values are: `DYNAMODB_JSON`, `ION`. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Data) for more information on these export formats. Default is `DYNAMODB_JSON`.
  final pulumi.Input<String>? exportFormat;
  /// Time in RFC3339 format from which to export table data. The table export will be a snapshot of the table's state at this point in time. Omitting this value will result in a snapshot from the current time.
  final pulumi.Input<String>? exportTime;
  /// Whether to execute as a full export or incremental export. Valid values are: `FULL_EXPORT`, `INCREMENTAL_EXPORT`. Defaults to `FULL_EXPORT`. If `INCREMENTAL_EXPORT` is provided, the `incrementalExportSpecification` argument must also be provided.
  /// `incrementalExportSpecification` - (Optional, Forces new resource) Parameters specific to an incremental export. See `incrementalExportSpecification` Block for details.
  final pulumi.Input<String>? exportType;
  final pulumi.Input<TableExportIncrementalExportSpecification>? incrementalExportSpecification;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the Amazon S3 bucket to export the snapshot to. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport_Requesting.html#S3DataExport_Requesting_Permissions) for information on how configure this S3 bucket.
  final pulumi.Input<String> s3Bucket;
  /// ID of the AWS account that owns the bucket the export will be stored in.
  final pulumi.Input<String>? s3BucketOwner;
  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  final pulumi.Input<String>? s3Prefix;
  /// Type of encryption used on the bucket where export data will be stored. Valid values are: `AES256`, `KMS`.
  final pulumi.Input<String>? s3SseAlgorithm;
  /// ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  final pulumi.Input<String>? s3SseKmsKeyId;
  /// ARN associated with the table to export.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> tableArn;

  /// Creates a new [TableExportArgs].
  /// [exportFormat] Format for the exported data. Valid values are: `DYNAMODB_JSON`, `ION`. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Data) for more information on these export formats. Default is `DYNAMODB_JSON`.
  /// [exportTime] Time in RFC3339 format from which to export table data. The table export will be a snapshot of the table's state at this point in time. Omitting this value will result in a snapshot from the current time.
  /// [exportType] Whether to execute as a full export or incremental export. Valid values are: `FULL_EXPORT`, `INCREMENTAL_EXPORT`. Defaults to `FULL_EXPORT`. If `INCREMENTAL_EXPORT` is provided, the `incrementalExportSpecification` argument must also be provided.
  /// [incrementalExportSpecification] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Bucket] Name of the Amazon S3 bucket to export the snapshot to. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport_Requesting.html#S3DataExport_Requesting_Permissions) for information on how configure this S3 bucket.
  /// [s3BucketOwner] ID of the AWS account that owns the bucket the export will be stored in.
  /// [s3Prefix] Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  /// [s3SseAlgorithm] Type of encryption used on the bucket where export data will be stored. Valid values are: `AES256`, `KMS`.
  /// [s3SseKmsKeyId] ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  /// [tableArn] ARN associated with the table to export.
  const TableExportArgs({
    this.exportFormat,
    this.exportTime,
    this.exportType,
    this.incrementalExportSpecification,
    this.region,
    required this.s3Bucket,
    this.s3BucketOwner,
    this.s3Prefix,
    this.s3SseAlgorithm,
    this.s3SseKmsKeyId,
    required this.tableArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportFormat': ?exportFormat,
      'exportTime': ?exportTime,
      'exportType': ?exportType,
      'incrementalExportSpecification': ?pulumi.Input.mapOptionalInputValue<TableExportIncrementalExportSpecification, Map<String, dynamic>>(incrementalExportSpecification, (value) => value.toMap()),
      'region': ?region,
      's3Bucket': s3Bucket,
      's3BucketOwner': ?s3BucketOwner,
      's3Prefix': ?s3Prefix,
      's3SseAlgorithm': ?s3SseAlgorithm,
      's3SseKmsKeyId': ?s3SseKmsKeyId,
      'tableArn': tableArn,
    };
  }

  factory TableExportArgs.fromMap(Map<String, dynamic> map) {
    return TableExportArgs(
      exportFormat: (() { final guardedValue = map['exportFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportTime: (() { final guardedValue = map['exportTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportType: (() { final guardedValue = map['exportType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incrementalExportSpecification: (() { final guardedValue = map['incrementalExportSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExportIncrementalExportSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Bucket: pulumi.Input.fromValue(map['s3Bucket'] as String),
      s3BucketOwner: (() { final guardedValue = map['s3BucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Prefix: (() { final guardedValue = map['s3Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3SseAlgorithm: (() { final guardedValue = map['s3SseAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3SseKmsKeyId: (() { final guardedValue = map['s3SseKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableArn: pulumi.Input.fromValue(map['tableArn'] as String),
    );
  }
}
