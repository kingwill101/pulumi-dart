// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_tables_table_policy_table_policy_args_doc}
/// The set of arguments for TablePolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_tables_table_policy_table_policy_args_doc}
class TablePolicyArgs {
  /// Name of the table. Must be between 1 and 255 characters in length. Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String>? name;
  /// Name of the namespace for this table. Must be between 1 and 255 characters in length. Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final pulumi.Input<String> namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Web Services resource-based policy document in JSON format.
  final pulumi.Input<String> resourcePolicy;
  /// ARN referencing the Table Bucket that contains this Namespace.
  final pulumi.Input<String> tableBucketArn;

  /// Creates a new [TablePolicyArgs].
  /// [name] Name of the table. Must be between 1 and 255 characters in length. Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// [namespace] Name of the namespace for this table. Must be between 1 and 255 characters in length. Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourcePolicy] Amazon Web Services resource-based policy document in JSON format.
  /// [tableBucketArn] ARN referencing the Table Bucket that contains this Namespace.
  const TablePolicyArgs({
    this.name,
    required this.namespace,
    this.region,
    required this.resourcePolicy,
    required this.tableBucketArn,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicy: pulumi.Input.fromValue(map['resourcePolicy'] as String),
      tableBucketArn: pulumi.Input.fromValue(map['tableBucketArn'] as String),
    );
  }
}
