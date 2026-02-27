// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TableBucketPolicy.
class TableBucketPolicyArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Amazon Web Services resource-based policy document in JSON format.
  final pulumi.Input<String> resourcePolicy;

  /// ARN referencing the Table Bucket that owns this policy.
  final pulumi.Input<String> tableBucketArn;

  TableBucketPolicyArgs({
    this.region,
    required this.resourcePolicy,
    required this.tableBucketArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourcePolicy'] = resourcePolicy;
    map['tableBucketArn'] = tableBucketArn;
    return map;
  }

  factory TableBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return TableBucketPolicyArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourcePolicy: pulumi.Input.asInput<String>(map['resourcePolicy']),
      tableBucketArn: pulumi.Input.asInput<String>(map['tableBucketArn']),
    );
  }
}
