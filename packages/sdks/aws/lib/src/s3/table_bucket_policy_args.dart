// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_tables_table_bucket_policy_table_bucket_policy_args_doc}
/// The set of arguments for TableBucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_tables_table_bucket_policy_table_bucket_policy_args_doc}
class TableBucketPolicyArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Web Services resource-based policy document in JSON format.
  final pulumi.Input<String> resourcePolicy;
  /// ARN referencing the Table Bucket that owns this policy.
  final pulumi.Input<String> tableBucketArn;

  /// Creates a new [TableBucketPolicyArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePolicy] Amazon Web Services resource-based policy document in JSON format.
  /// [tableBucketArn] ARN referencing the Table Bucket that owns this policy.
  TableBucketPolicyArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourcePolicy,
    required pulumi.Output<String> tableBucketArn,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourcePolicy = pulumi.Input.asInput<String>(resourcePolicy),
      tableBucketArn = pulumi.Input.asInput<String>(tableBucketArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourcePolicy': resourcePolicy,
      'tableBucketArn': tableBucketArn,
    };
  }

  factory TableBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TableBucketPolicyArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourcePolicy: pulumi.Output.create<String>(map['resourcePolicy'] as String),
      tableBucketArn: pulumi.Output.create<String>(map['tableBucketArn'] as String),
    );
  }
}

