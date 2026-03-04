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
    this.region,
    required this.resourcePolicy,
    required this.tableBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourcePolicy': resourcePolicy,
      'tableBucketArn': tableBucketArn,
    };
  }

  factory TableBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TableBucketPolicyArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourcePolicy: pulumi.Input.fromValue(map['resourcePolicy'] as String),
      tableBucketArn: pulumi.Input.fromValue(map['tableBucketArn'] as String),
    );
  }
}
