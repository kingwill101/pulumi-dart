// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TablePolicy resources.
class TablePolicyState {
  /// Name of the table. Must be between 1 and 255 characters in length. Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String?>? name;
  /// Name of the namespace for this table. Must be between 1 and 255 characters in length. Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String?>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Amazon Web Services resource-based policy document in JSON format.
  final pulumi.Input<String?>? resourcePolicy;
  /// ARN referencing the Table Bucket that contains this Namespace.
  final pulumi.Input<String?>? tableBucketArn;

  /// Creates a new [TablePolicyState].
  /// [name] Name of the table. Must be between 1 and 255 characters in length. Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// [namespace] Name of the namespace for this table. Must be between 1 and 255 characters in length. Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePolicy] Amazon Web Services resource-based policy document in JSON format.
  /// [tableBucketArn] ARN referencing the Table Bucket that contains this Namespace.
  const TablePolicyState({
    this.name,
    this.namespace,
    this.region,
    this.resourcePolicy,
    this.tableBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
      'region': ?region,
      'resourcePolicy': ?resourcePolicy,
      'tableBucketArn': ?tableBucketArn,
    };
  }

  factory TablePolicyState.fromMap(Map<String, dynamic> map) {
    return TablePolicyState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicy: (() { final guardedValue = map['resourcePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableBucketArn: (() { final guardedValue = map['tableBucketArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
