// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_tables_table_policy_table_policy_args_doc}
/// The set of arguments for TablePolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_tables_table_policy_table_policy_args_doc}
class TablePolicyArgs {
  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String>? name;
  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String> namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Web Services resource-based policy document in JSON format.
  final pulumi.Input<String> resourcePolicy;
  /// ARN referencing the Table Bucket that contains this Namespace.
  final pulumi.Input<String> tableBucketArn;

  /// Creates a new [TablePolicyArgs].
  /// [name] Name of the table.
  /// [namespace] Name of the namespace for this table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePolicy] Amazon Web Services resource-based policy document in JSON format.
  /// [tableBucketArn] ARN referencing the Table Bucket that contains this Namespace.
  TablePolicyArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespace,
    pulumi.Output<String>? region,
    required pulumi.Output<String> resourcePolicy,
    required pulumi.Output<String> tableBucketArn,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourcePolicy = pulumi.Input.asInput<String>(resourcePolicy),
      tableBucketArn = pulumi.Input.asInput<String>(tableBucketArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': namespace,
      'region': ?region,
      'resourcePolicy': resourcePolicy,
      'tableBucketArn': tableBucketArn,
    };
  }

  factory TablePolicyArgs.fromMap(Map<String, dynamic> map) {
    return TablePolicyArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourcePolicy: pulumi.Output.create<String>(map['resourcePolicy'] as String),
      tableBucketArn: pulumi.Output.create<String>(map['tableBucketArn'] as String),
    );
  }
}

