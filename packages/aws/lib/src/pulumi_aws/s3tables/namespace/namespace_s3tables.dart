import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_s3tables_args.dart';

/// Resource for managing an Amazon S3 Tables Namespace.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Namespace using the `table_bucket_arn` and the value of `namespace`, separated by a semicolon (`;`). For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/namespace:Namespace example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace'
/// ```
class NamespaceS3tables extends pulumi.CustomResource {
  /// Date and time when the namespace was created.
  late final pulumi.Output<String> createdAt;

  /// Account ID of the account that created the namespace.
  late final pulumi.Output<String> createdBy;

  /// Name of the namespace.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final pulumi.Output<String> namespace;

  /// Account ID of the account that owns the namespace.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN referencing the Table Bucket that contains this Namespace.
  late final pulumi.Output<String> tableBucketArn;

  NamespaceS3tables(
    String name, {
    NamespaceS3tablesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.namespace = registerOutput<String>('namespace');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.region = registerOutput<String>('region');
    this.tableBucketArn = registerOutput<String>('tableBucketArn');
  }
}
