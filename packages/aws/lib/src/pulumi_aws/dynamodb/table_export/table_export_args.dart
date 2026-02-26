// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_export_incremental_export_specification/table_export_incremental_export_specification.dart';

/// The set of arguments for TableExport.
class TableExportArgs {
  /// Format for the exported data. Valid values are: `DYNAMODB_JSON`, `ION`. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Data) for more information on these export formats. Default is `DYNAMODB_JSON`.
  final Input<String>? exportFormat;

  /// Time in RFC3339 format from which to export table data. The table export will be a snapshot of the table's state at this point in time. Omitting this value will result in a snapshot from the current time.
  final Input<String>? exportTime;

  /// Whether to execute as a full export or incremental export. Valid values are: `FULL_EXPORT`, `INCREMENTAL_EXPORT`. Defaults to `FULL_EXPORT`. If `INCREMENTAL_EXPORT` is provided, the <span pulumi-lang-nodejs="`incrementalExportSpecification`" pulumi-lang-dotnet="`IncrementalExportSpecification`" pulumi-lang-go="`incrementalExportSpecification`" pulumi-lang-python="`incremental_export_specification`" pulumi-lang-yaml="`incrementalExportSpecification`" pulumi-lang-java="`incrementalExportSpecification`">`incremental_export_specification`</span> argument must also be provided.
  /// <span pulumi-lang-nodejs="`incrementalExportSpecification`" pulumi-lang-dotnet="`IncrementalExportSpecification`" pulumi-lang-go="`incrementalExportSpecification`" pulumi-lang-python="`incremental_export_specification`" pulumi-lang-yaml="`incrementalExportSpecification`" pulumi-lang-java="`incrementalExportSpecification`">`incremental_export_specification`</span> - (Optional, Forces new resource) Parameters specific to an incremental export. See <span pulumi-lang-nodejs="`incrementalExportSpecification`" pulumi-lang-dotnet="`IncrementalExportSpecification`" pulumi-lang-go="`incrementalExportSpecification`" pulumi-lang-python="`incremental_export_specification`" pulumi-lang-yaml="`incrementalExportSpecification`" pulumi-lang-java="`incrementalExportSpecification`">`incremental_export_specification`</span> Block for details.
  final Input<String>? exportType;
  final Input<TableExportIncrementalExportSpecification>?
      incrementalExportSpecification;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the Amazon S3 bucket to export the snapshot to. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport_Requesting.html#S3DataExport_Requesting_Permissions) for information on how configure this S3 bucket.
  final Input<String> s3Bucket;

  /// ID of the AWS account that owns the bucket the export will be stored in.
  final Input<String>? s3BucketOwner;

  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  final Input<String>? s3Prefix;

  /// Type of encryption used on the bucket where export data will be stored. Valid values are: `AES256`, `KMS`.
  final Input<String>? s3SseAlgorithm;

  /// ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  final Input<String>? s3SseKmsKeyId;

  /// ARN associated with the table to export.
  ///
  /// The following arguments are optional:
  final Input<String> tableArn;

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
      map['incrementalExportSpecification'] = Input.mapOptionalInputValue<
              TableExportIncrementalExportSpecification, Map<String, dynamic>>(
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
      exportFormat: Input.asOptionalInput<String>(map['exportFormat']),
      exportTime: Input.asOptionalInput<String>(map['exportTime']),
      exportType: Input.asOptionalInput<String>(map['exportType']),
      incrementalExportSpecification:
          Input.asOptionalInput<TableExportIncrementalExportSpecification>(
              map['incrementalExportSpecification']),
      region: Input.asOptionalInput<String>(map['region']),
      s3Bucket: Input.asInput<String>(map['s3Bucket']),
      s3BucketOwner: Input.asOptionalInput<String>(map['s3BucketOwner']),
      s3Prefix: Input.asOptionalInput<String>(map['s3Prefix']),
      s3SseAlgorithm: Input.asOptionalInput<String>(map['s3SseAlgorithm']),
      s3SseKmsKeyId: Input.asOptionalInput<String>(map['s3SseKmsKeyId']),
      tableArn: Input.asInput<String>(map['tableArn']),
    );
  }
}
