import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_policy_args.dart';

/// Resource for managing an Amazon S3 Tables Table Bucket Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Bucket Policy using the `table_bucket_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableBucketPolicy:TableBucketPolicy example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace'
/// ```
class TableBucketPolicy extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon Web Services resource-based policy document in JSON format.
  late final pulumi.Output<String> resourcePolicy;

  /// ARN referencing the Table Bucket that owns this policy.
  late final pulumi.Output<String> tableBucketArn;

  TableBucketPolicy(
    String name, {
    TableBucketPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucketPolicy:TableBucketPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourcePolicy = registerOutput<String>('resourcePolicy');
    this.tableBucketArn = registerOutput<String>('tableBucketArn');
  }
}
