import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_bucket_encryption_configuration/table_bucket_encryption_configuration.dart';
import '../table_bucket_maintenance_configuration/table_bucket_maintenance_configuration.dart';
import 'table_bucket_args.dart';

/// Resource for managing an Amazon S3 Tables Table Bucket.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Bucket using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableBucket:TableBucket example arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket
/// ```
class TableBucket extends pulumi.CustomResource {
  /// ARN of the table bucket.
  late final pulumi.Output<String> arn;

  /// Date and time when the bucket was created.
  late final pulumi.Output<String> createdAt;

  /// A single table bucket encryption configuration object.
  /// See `encryption_configuration` below.
  late final pulumi.Output<TableBucketEncryptionConfiguration?>
      encryptionConfiguration;

  /// Whether all tables and namespaces within the table bucket should be deleted *when the table bucket is destroyed* so that the table bucket can be destroyed without error. These tables and namespaces are *not* recoverable. This only deletes tables and namespaces when the table bucket is destroyed, *not* when setting this parameter to `true`. Once this parameter is set to `true`, there must be a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the table bucket or destroying the table bucket, this flag will not work. Additionally when importing a table bucket, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final pulumi.Output<bool> forceDestroy;

  /// A single table bucket maintenance configuration object.
  /// See `maintenance_configuration` below.
  late final pulumi.Output<TableBucketMaintenanceConfiguration>
      maintenanceConfiguration;

  /// Name of the table bucket.
  /// Must be between 3 and 63 characters in length.
  /// Can consist of lowercase letters, numbers, and hyphens, and must begin and end with a lowercase letter or number.
  /// A full list of bucket naming rules can be found in the [S3 Tables documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-buckets-naming.html#table-buckets-naming-rules).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Account ID of the account that owns the table bucket.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  TableBucket(
    String name, {
    TableBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucket:TableBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.encryptionConfiguration =
        registerOutput<TableBucketEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.forceDestroy = registerOutput<bool>('forceDestroy');
    this.maintenanceConfiguration =
        registerOutput<TableBucketMaintenanceConfiguration>(
            'maintenanceConfiguration');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
