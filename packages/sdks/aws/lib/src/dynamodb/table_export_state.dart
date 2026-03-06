// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_export_incremental_export_specification.dart';

/// Input properties used for looking up and filtering TableExport resources.
class TableExportState {
  /// ARN of the Table Export.
  final pulumi.Input<String>? arn;
  /// Billable size of the table export.
  final pulumi.Input<int>? billedSizeInBytes;
  /// Time at which the export task completed.
  final pulumi.Input<String>? endTime;
  /// Format for the exported data. Valid values are: `DYNAMODB_JSON`, `ION`. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Data) for more information on these export formats. Default is `DYNAMODB_JSON`.
  final pulumi.Input<String>? exportFormat;
  /// Status of the export - export can be in one of the following states `IN_PROGRESS`, `COMPLETED`, or `FAILED`.
  final pulumi.Input<String>? exportStatus;
  /// Time in RFC3339 format from which to export table data. The table export will be a snapshot of the table's state at this point in time. Omitting this value will result in a snapshot from the current time.
  final pulumi.Input<String>? exportTime;
  /// Whether to execute as a full export or incremental export. Valid values are: `FULL_EXPORT`, `INCREMENTAL_EXPORT`. Defaults to `FULL_EXPORT`. If `INCREMENTAL_EXPORT` is provided, the `incremental_export_specification` argument must also be provided.
  /// `incremental_export_specification` - (Optional, Forces new resource) Parameters specific to an incremental export. See `incremental_export_specification` Block for details.
  final pulumi.Input<String>? exportType;
  final pulumi.Input<TableExportIncrementalExportSpecification>? incrementalExportSpecification;
  /// Number of items exported.
  final pulumi.Input<int>? itemCount;
  /// Name of the manifest file for the export task. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Manifest) for more information on this manifest file.
  final pulumi.Input<String>? manifestFilesS3Key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the Amazon S3 bucket to export the snapshot to. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport_Requesting.html#S3DataExport_Requesting_Permissions) for information on how configure this S3 bucket.
  final pulumi.Input<String>? s3Bucket;
  /// ID of the AWS account that owns the bucket the export will be stored in.
  final pulumi.Input<String>? s3BucketOwner;
  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  final pulumi.Input<String>? s3Prefix;
  /// Type of encryption used on the bucket where export data will be stored. Valid values are: `AES256`, `KMS`.
  final pulumi.Input<String>? s3SseAlgorithm;
  /// ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  final pulumi.Input<String>? s3SseKmsKeyId;
  /// Time at which the export task began.
  final pulumi.Input<String>? startTime;
  /// ARN associated with the table to export.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? tableArn;

  /// Creates a new [TableExportState].
  /// [arn] ARN of the Table Export.
  /// [billedSizeInBytes] Billable size of the table export.
  /// [endTime] Time at which the export task completed.
  /// [exportFormat] Format for the exported data. Valid values are: `DYNAMODB_JSON`, `ION`. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Data) for more information on these export formats. Default is `DYNAMODB_JSON`.
  /// [exportStatus] Status of the export - export can be in one of the following states `IN_PROGRESS`, `COMPLETED`, or `FAILED`.
  /// [exportTime] Time in RFC3339 format from which to export table data. The table export will be a snapshot of the table's state at this point in time. Omitting this value will result in a snapshot from the current time.
  /// [exportType] Whether to execute as a full export or incremental export. Valid values are: `FULL_EXPORT`, `INCREMENTAL_EXPORT`. Defaults to `FULL_EXPORT`. If `INCREMENTAL_EXPORT` is provided, the `incremental_export_specification` argument must also be provided.
  /// [incrementalExportSpecification] Optional.
  /// [itemCount] Number of items exported.
  /// [manifestFilesS3Key] Name of the manifest file for the export task. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Manifest) for more information on this manifest file.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Bucket] Name of the Amazon S3 bucket to export the snapshot to. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport_Requesting.html#S3DataExport_Requesting_Permissions) for information on how configure this S3 bucket.
  /// [s3BucketOwner] ID of the AWS account that owns the bucket the export will be stored in.
  /// [s3Prefix] Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  /// [s3SseAlgorithm] Type of encryption used on the bucket where export data will be stored. Valid values are: `AES256`, `KMS`.
  /// [s3SseKmsKeyId] ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  /// [startTime] Time at which the export task began.
  /// [tableArn] ARN associated with the table to export.
  const TableExportState({
    this.arn,
    this.billedSizeInBytes,
    this.endTime,
    this.exportFormat,
    this.exportStatus,
    this.exportTime,
    this.exportType,
    this.incrementalExportSpecification,
    this.itemCount,
    this.manifestFilesS3Key,
    this.region,
    this.s3Bucket,
    this.s3BucketOwner,
    this.s3Prefix,
    this.s3SseAlgorithm,
    this.s3SseKmsKeyId,
    this.startTime,
    this.tableArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'billedSizeInBytes': ?billedSizeInBytes,
      'endTime': ?endTime,
      'exportFormat': ?exportFormat,
      'exportStatus': ?exportStatus,
      'exportTime': ?exportTime,
      'exportType': ?exportType,
      'incrementalExportSpecification': ?pulumi.Input.mapOptionalInputValue<TableExportIncrementalExportSpecification, Map<String, dynamic>>(incrementalExportSpecification, (value) => value.toMap()),
      'itemCount': ?itemCount,
      'manifestFilesS3Key': ?manifestFilesS3Key,
      'region': ?region,
      's3Bucket': ?s3Bucket,
      's3BucketOwner': ?s3BucketOwner,
      's3Prefix': ?s3Prefix,
      's3SseAlgorithm': ?s3SseAlgorithm,
      's3SseKmsKeyId': ?s3SseKmsKeyId,
      'startTime': ?startTime,
      'tableArn': ?tableArn,
    };
  }

  factory TableExportState.fromMap(Map<String, dynamic> map) {
    return TableExportState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      billedSizeInBytes: (() { final guardedValue = map['billedSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportFormat: (() { final guardedValue = map['exportFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportStatus: (() { final guardedValue = map['exportStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportTime: (() { final guardedValue = map['exportTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportType: (() { final guardedValue = map['exportType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      incrementalExportSpecification: (() { final guardedValue = map['incrementalExportSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableExportIncrementalExportSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      itemCount: (() { final guardedValue = map['itemCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      manifestFilesS3Key: (() { final guardedValue = map['manifestFilesS3Key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Bucket: (() { final guardedValue = map['s3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketOwner: (() { final guardedValue = map['s3BucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Prefix: (() { final guardedValue = map['s3Prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3SseAlgorithm: (() { final guardedValue = map['s3SseAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3SseKmsKeyId: (() { final guardedValue = map['s3SseKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableArn: (() { final guardedValue = map['tableArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

