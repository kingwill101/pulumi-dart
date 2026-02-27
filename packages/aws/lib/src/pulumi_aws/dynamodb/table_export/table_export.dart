import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_export_incremental_export_specification/table_export_incremental_export_specification.dart';
import 'table_export_args.dart';

/// Resource for managing an AWS DynamoDB Table Export. Terraform will wait until the Table export reaches a status of `COMPLETED` or `FAILED`.
///
/// See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.HowItWorks.html) for more information on how this process works.
///
/// > **TIP:** Point-in-time Recovery must be enabled on the target DynamoDB Table.
///
/// > **NOTE:** Once a AWS DynamoDB Table Export has been created it is immutable. The AWS API does not delete this resource. When you run destroy the provider will remove the resource from the Terraform state, no exported data will be deleted.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Example with export time
///
///
///
/// ### Incremental export
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DynamoDB table export.
///
///
/// Using `pulumi import`, import DynamoDB table exports using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:dynamodb/tableExport:TableExport example arn:aws:dynamodb:us-west-2:12345678911:table/my-table-1/export/01580735656614-2c2f422e
/// ```
class TableExport extends pulumi.CustomResource {
  /// ARN of the Table Export.
  late final pulumi.Output<String> arn;

  /// Billable size of the table export.
  late final pulumi.Output<int> billedSizeInBytes;

  /// Time at which the export task completed.
  late final pulumi.Output<String> endTime;

  /// Format for the exported data. Valid values are: `DYNAMODB_JSON`, `ION`. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Data) for more information on these export formats. Default is `DYNAMODB_JSON`.
  late final pulumi.Output<String?> exportFormat;

  /// Status of the export - export can be in one of the following states `IN_PROGRESS`, `COMPLETED`, or `FAILED`.
  late final pulumi.Output<String> exportStatus;

  /// Time in RFC3339 format from which to export table data. The table export will be a snapshot of the table's state at this point in time. Omitting this value will result in a snapshot from the current time.
  late final pulumi.Output<String> exportTime;

  /// Whether to execute as a full export or incremental export. Valid values are: `FULL_EXPORT`, `INCREMENTAL_EXPORT`. Defaults to `FULL_EXPORT`. If `INCREMENTAL_EXPORT` is provided, the `incremental_export_specification` argument must also be provided.
  /// `incremental_export_specification` - (Optional, Forces new resource) Parameters specific to an incremental export. See `incremental_export_specification` Block for details.
  late final pulumi.Output<String> exportType;
  late final pulumi.Output<TableExportIncrementalExportSpecification?>
      incrementalExportSpecification;

  /// Number of items exported.
  late final pulumi.Output<int> itemCount;

  /// Name of the manifest file for the export task. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport.Output.html#S3DataExport.Output_Manifest) for more information on this manifest file.
  late final pulumi.Output<String> manifestFilesS3Key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the Amazon S3 bucket to export the snapshot to. See the [AWS Documentation](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/S3DataExport_Requesting.html#S3DataExport_Requesting_Permissions) for information on how configure this S3 bucket.
  late final pulumi.Output<String> s3Bucket;

  /// ID of the AWS account that owns the bucket the export will be stored in.
  late final pulumi.Output<String> s3BucketOwner;

  /// Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.
  late final pulumi.Output<String> s3Prefix;

  /// Type of encryption used on the bucket where export data will be stored. Valid values are: `AES256`, `KMS`.
  late final pulumi.Output<String> s3SseAlgorithm;

  /// ID of the AWS KMS managed key used to encrypt the S3 bucket where export data will be stored (if applicable).
  late final pulumi.Output<String?> s3SseKmsKeyId;

  /// Time at which the export task began.
  late final pulumi.Output<String> startTime;

  /// ARN associated with the table to export.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tableArn;

  TableExport(
    String name, {
    TableExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dynamodb/tableExport:TableExport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.billedSizeInBytes = registerOutput<int>('billedSizeInBytes');
    this.endTime = registerOutput<String>('endTime');
    this.exportFormat = registerOutput<String?>('exportFormat');
    this.exportStatus = registerOutput<String>('exportStatus');
    this.exportTime = registerOutput<String>('exportTime');
    this.exportType = registerOutput<String>('exportType');
    this.incrementalExportSpecification =
        registerOutput<TableExportIncrementalExportSpecification?>(
            'incrementalExportSpecification');
    this.itemCount = registerOutput<int>('itemCount');
    this.manifestFilesS3Key = registerOutput<String>('manifestFilesS3Key');
    this.region = registerOutput<String>('region');
    this.s3Bucket = registerOutput<String>('s3Bucket');
    this.s3BucketOwner = registerOutput<String>('s3BucketOwner');
    this.s3Prefix = registerOutput<String>('s3Prefix');
    this.s3SseAlgorithm = registerOutput<String>('s3SseAlgorithm');
    this.s3SseKmsKeyId = registerOutput<String?>('s3SseKmsKeyId');
    this.startTime = registerOutput<String>('startTime');
    this.tableArn = registerOutput<String>('tableArn');
  }
}
