import 'package:pulumi/pulumi.dart';
import '../table_bucket_replication_rule/table_bucket_replication_rule.dart';
import 'table_bucket_replication_args.dart';

/// Manages Amazon S3 Tables Table Bucket Replication configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Tables Table Bucket Replication using the `table_bucket_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3tables/tableBucketReplication:TableBucketReplication example 'arn:aws:s3tables:us-west-2:123456789012:bucket/example-bucket'
/// ```
class TableBucketReplication extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN referencing the IAM role assumed by S3 when replicating tables in this bucket.
  late final Output<String> role;

  /// Replication rules. See Rule below for more details.
  late final Output<TableBucketReplicationRule?> rule;

  /// ARN referencing the Table Bucket that owns this replication configuration.
  late final Output<String> tableBucketArn;
  late final Output<String> versionToken;

  TableBucketReplication(
    String name, {
    TableBucketReplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:s3tables/tableBucketReplication:TableBucketReplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.rule = registerOutput<TableBucketReplicationRule?>('rule');
    this.tableBucketArn = registerOutput<String>('tableBucketArn');
    this.versionToken = registerOutput<String>('versionToken');
  }
}
