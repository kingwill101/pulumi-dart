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
  const TableBucketPolicyState({
    this.region,
    this.resourcePolicy,
    this.tableBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourcePolicy': ?resourcePolicy,
      'tableBucketArn': ?tableBucketArn,
    };
  }

  factory TableBucketPolicyState.fromMap(Map<String, dynamic> map) {
    return TableBucketPolicyState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicy: (() { final guardedValue = map['resourcePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableBucketArn: (() { final guardedValue = map['tableBucketArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
