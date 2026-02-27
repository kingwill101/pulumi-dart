import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_encryption_configuration/table_encryption_configuration.dart';
import '../table_maintenance_configuration/table_maintenance_configuration.dart';
import '../table_metadata/table_metadata.dart';
import 'table_s3tables_args.dart';

/// Resource for managing an Amazon S3 Tables Table.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Metadata Schema
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table using the `table_bucket_arn`, the value of `namespace`, and the value of `name`, separated by a semicolon (`;`). For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/table:Table example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace;example-table'
/// ```
class TableS3tables extends pulumi.CustomResource {
  /// ARN of the table.
  late final pulumi.Output<String> arn;

  /// Date and time when the namespace was created.
  late final pulumi.Output<String> createdAt;

  /// Account ID of the account that created the namespace.
  late final pulumi.Output<String> createdBy;

  /// A single table bucket encryption configuration object.
  /// See `encryption_configuration` below.
  late final pulumi.Output<TableEncryptionConfiguration>
      encryptionConfiguration;

  /// Format of the table.
  /// Must be `ICEBERG`.
  late final pulumi.Output<String> format;

  /// A single table bucket maintenance configuration object.
  /// See `maintenance_configuration` below.
  late final pulumi.Output<TableMaintenanceConfiguration>
      maintenanceConfiguration;

  /// Contains details about the table metadata. This configuration specifies the metadata format and schema for the table. Currently only supports Iceberg format.
  /// See `metadata` below.
  late final pulumi.Output<TableMetadata?> metadata;

  /// Location of table metadata.
  late final pulumi.Output<String> metadataLocation;

  /// Date and time when the namespace was last modified.
  late final pulumi.Output<String> modifiedAt;

  /// Account ID of the account that last modified the namespace.
  late final pulumi.Output<String> modifiedBy;

  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// A full list of table naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#naming-rules-table).
  late final pulumi.Output<String> name;

  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final pulumi.Output<String> namespace;

  /// Account ID of the account that owns the namespace.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN referencing the Table Bucket that contains this Namespace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tableBucketArn;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Type of the table.
  /// One of `customer` or `aws`.
  late final pulumi.Output<String> type;

  /// Identifier for the current version of table data.
  late final pulumi.Output<String> versionToken;

  /// S3 URI pointing to the S3 Bucket that contains the table data.
  late final pulumi.Output<String> warehouseLocation;

  TableS3tables(
    String name, {
    TableS3tablesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/table:Table',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.encryptionConfiguration =
        registerOutput<TableEncryptionConfiguration>('encryptionConfiguration');
    this.format = registerOutput<String>('format');
    this.maintenanceConfiguration =
        registerOutput<TableMaintenanceConfiguration>(
            'maintenanceConfiguration');
    this.metadata = registerOutput<TableMetadata?>('metadata');
    this.metadataLocation = registerOutput<String>('metadataLocation');
    this.modifiedAt = registerOutput<String>('modifiedAt');
    this.modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.region = registerOutput<String>('region');
    this.tableBucketArn = registerOutput<String>('tableBucketArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.versionToken = registerOutput<String>('versionToken');
    this.warehouseLocation = registerOutput<String>('warehouseLocation');
  }
}
