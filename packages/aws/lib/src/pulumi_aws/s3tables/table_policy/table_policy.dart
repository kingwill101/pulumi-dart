import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_policy_args.dart';

/// Resource for managing an Amazon S3 Tables Table Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Policy using the `table_bucket_arn`, the value of `namespace`, and the value of `name`, separated by a semicolon (`;`). For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tablePolicy:TablePolicy example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace;example-table'
/// ```
class TablePolicy extends pulumi.CustomResource {
  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final pulumi.Output<String> name;

  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final pulumi.Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Web Services resource-based policy document in JSON format.
  late final pulumi.Output<String> resourcePolicy;

  /// ARN referencing the Table Bucket that contains this Namespace.
  late final pulumi.Output<String> tableBucketArn;

  TablePolicy(
    String name, {
    TablePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tablePolicy:TablePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.resourcePolicy = registerOutput<String>('resourcePolicy');
    this.tableBucketArn = registerOutput<String>('tableBucketArn');
  }
}
