import 'package:pulumi/pulumi.dart';
import 'table_policy_args.dart';

/// Resource for managing an Amazon S3 Tables Table Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// resources:
/// exampleTablePolicy:
/// type: aws:s3tables:TablePolicy
/// name: example
/// properties:
/// resourcePolicy: ${example.json}
/// name: ${test.name}
/// namespace: ${test.namespace}
/// tableBucketArn: ${test.tableBucketArn}
/// exampleTable:
/// type: aws:s3tables:Table
/// name: example
/// properties:
/// name: example_table
/// namespace: ${exampleNamespace}
/// tableBucketArn: ${exampleNamespace.tableBucketArn}
/// format: ICEBERG
/// exampleNamespace:
/// type: aws:s3tables:Namespace
/// name: example
/// properties:
/// namespace:
/// - example-namespace
/// tableBucketArn: ${exampleTableBucket.arn}
/// exampleTableBucket:
/// type: aws:s3tables:TableBucket
/// name: example
/// properties:
/// name: example-bucket
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Policy using the <span pulumi-lang-nodejs="`tableBucketArn`" pulumi-lang-dotnet="`TableBucketArn`" pulumi-lang-go="`tableBucketArn`" pulumi-lang-python="`table_bucket_arn`" pulumi-lang-yaml="`tableBucketArn`" pulumi-lang-java="`tableBucketArn`">`table_bucket_arn`</span>, the value of <span pulumi-lang-nodejs="`namespace`" pulumi-lang-dotnet="`Namespace`" pulumi-lang-go="`namespace`" pulumi-lang-python="`namespace`" pulumi-lang-yaml="`namespace`" pulumi-lang-java="`namespace`">`namespace`</span>, and the value of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, separated by a semicolon (`;`). For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tablePolicy:TablePolicy example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket;example-namespace;example-table'
/// ```
class TablePolicy extends CustomResource {
  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final Output<String> name;

  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  late final Output<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Web Services resource-based policy document in JSON format.
  late final Output<String> resourcePolicy;

  /// ARN referencing the Table Bucket that contains this Namespace.
  late final Output<String> tableBucketArn;

  TablePolicy(
    String name, {
    TablePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tablePolicy:TablePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String>('namespace');
    this.region = registerOutput<String>('region');
    this.resourcePolicy = registerOutput<String>('resourcePolicy');
    this.tableBucketArn = registerOutput<String>('tableBucketArn');
  }
}
