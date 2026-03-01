// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TableBucketPolicy resources.
class TableBucketPolicyState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Web Services resource-based policy document in JSON format.
  final pulumi.Input<String>? resourcePolicy;
  /// ARN referencing the Table Bucket that owns this policy.
  final pulumi.Input<String>? tableBucketArn;

  /// Creates a new [TableBucketPolicyState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePolicy] Amazon Web Services resource-based policy document in JSON format.
  /// [tableBucketArn] ARN referencing the Table Bucket that owns this policy.
  TableBucketPolicyState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourcePolicy,
    pulumi.Output<String>? tableBucketArn,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourcePolicy = pulumi.Input.asOptionalInput<String>(resourcePolicy),
      tableBucketArn = pulumi.Input.asOptionalInput<String>(tableBucketArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourcePolicy': ?resourcePolicy,
      'tableBucketArn': ?tableBucketArn,
    };
  }

  factory TableBucketPolicyState.fromMap(Map<String, dynamic> map) {
    return TableBucketPolicyState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourcePolicy: map['resourcePolicy'] == null ? null : pulumi.Output.create<String>(map['resourcePolicy'] as String),
      tableBucketArn: map['tableBucketArn'] == null ? null : pulumi.Output.create<String>(map['tableBucketArn'] as String),
    );
  }
}

