// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_export_incremental_export_specification/table_export_incremental_export_specification.dart';

/// The set of arguments for TableExport.
class TableExportArgs {
  /// Format for the exported data. Valid values are: `DYNAMODB_JSON`, `ION`. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Data) for more information on these export formats. Default is `DYNAMODB_JSON`.
  final pulumi.Input<String>? exportFormat;

  /// Time in RFC3339 format from which to export table data. The table export will be a snapshot of the table's state at this point in time. Omitting this value will result in a snapshot from the current time.
  final pulumi.Input<String>? exportTime;

  /// Whether to execute as a full export or incremental export. Valid values are: `FULL_EXPORT`, `INCREMENTAL_EXPORT`. Defaults to `FULL_EXPORT`. If `INCREMENTAL_EXPORT` is provided, the `incremental_export_specification` argument must also be provided.
  /// `incremental_export_specification` - (Optional, Forces new resource) Parameters specific to an incremental export. See `incremental_export_specification` Block for details.
  final pulumi.Input<String>? exportType;
  final pulumi.Input<TableExportIncrementalExportSpecification>?
      incrementalExportSpecification;

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

  TableExportArgs({
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
    final map = <String, dynamic>{};
    final exportFormatValue = exportFormat;
    if (exportFormatValue != null) {
      map['exportFormat'] = exportFormatValue;
    }
    final exportTimeValue = exportTime;
    if (exportTimeValue != null) {
      map['exportTime'] = exportTimeValue;
    }
    final exportTypeValue = exportType;
    if (exportTypeValue != null) {
      map['exportType'] = exportTypeValue;
    }
    final incrementalExportSpecificationValue = incrementalExportSpecification;
    if (incrementalExportSpecificationValue != null) {
      map['incrementalExportSpecification'] =
          pulumi.Input.mapOptionalInputValue<
                  TableExportIncrementalExportSpecification,
                  Map<String, dynamic>>(
              incrementalExportSpecificationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['s3Bucket'] = s3Bucket;
    final s3BucketOwnerValue = s3BucketOwner;
    if (s3BucketOwnerValue != null) {
      map['s3BucketOwner'] = s3BucketOwnerValue;
    }
    final s3PrefixValue = s3Prefix;
    if (s3PrefixValue != null) {
      map['s3Prefix'] = s3PrefixValue;
    }
    final s3SseAlgorithmValue = s3SseAlgorithm;
    if (s3SseAlgorithmValue != null) {
      map['s3SseAlgorithm'] = s3SseAlgorithmValue;
    }
    final s3SseKmsKeyIdValue = s3SseKmsKeyId;
    if (s3SseKmsKeyIdValue != null) {
      map['s3SseKmsKeyId'] = s3SseKmsKeyIdValue;
    }
    map['tableArn'] = tableArn;
    return map;
  }

  factory TableExportArgs.fromMap(Map<String, dynamic> map) {
    return TableExportArgs(
      exportFormat: pulumi.Input.asOptionalInput<String>(map['exportFormat']),
      exportTime: pulumi.Input.asOptionalInput<String>(map['exportTime']),
      exportType: pulumi.Input.asOptionalInput<String>(map['exportType']),
      incrementalExportSpecification: pulumi.Input.asOptionalInput<
              TableExportIncrementalExportSpecification>(
          map['incrementalExportSpecification']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      s3Bucket: pulumi.Input.asInput<String>(map['s3Bucket']),
      s3BucketOwner: pulumi.Input.asOptionalInput<String>(map['s3BucketOwner']),
      s3Prefix: pulumi.Input.asOptionalInput<String>(map['s3Prefix']),
      s3SseAlgorithm:
          pulumi.Input.asOptionalInput<String>(map['s3SseAlgorithm']),
      s3SseKmsKeyId: pulumi.Input.asOptionalInput<String>(map['s3SseKmsKeyId']),
      tableArn: pulumi.Input.asInput<String>(map['tableArn']),
    );
  }
}
