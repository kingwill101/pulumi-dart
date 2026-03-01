// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TablePolicy resources.
class TablePolicyState {
  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String>? name;
  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Web Services resource-based policy document in JSON format.
  final pulumi.Input<String>? resourcePolicy;
  /// ARN referencing the Table Bucket that contains this Namespace.
  final pulumi.Input<String>? tableBucketArn;

  /// Creates a new [TablePolicyState].
  /// [name] Name of the table.
  /// [namespace] Name of the namespace for this table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePolicy] Amazon Web Services resource-based policy document in JSON format.
  /// [tableBucketArn] ARN referencing the Table Bucket that contains this Namespace.
  TablePolicyState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourcePolicy,
    pulumi.Output<String>? tableBucketArn,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourcePolicy = pulumi.Input.asOptionalInput<String>(resourcePolicy),
      tableBucketArn = pulumi.Input.asOptionalInput<String>(tableBucketArn);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourcePolicy: map['resourcePolicy'] == null ? null : pulumi.Output.create<String>(map['resourcePolicy'] as String),
      tableBucketArn: map['tableBucketArn'] == null ? null : pulumi.Output.create<String>(map['tableBucketArn'] as String),
    );
  }
}

