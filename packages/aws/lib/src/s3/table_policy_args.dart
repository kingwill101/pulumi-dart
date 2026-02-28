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
    String? name,
    required String namespace,
    String? region,
    required String resourcePolicy,
    required String tableBucketArn,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        namespace = pulumi.Input.asInput<String>(namespace),
        region = pulumi.Input.asOptionalInput<String>(region),
        resourcePolicy = pulumi.Input.asInput<String>(resourcePolicy),
        tableBucketArn = pulumi.Input.asInput<String>(tableBucketArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namespace'] = namespace;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourcePolicy'] = resourcePolicy;
    map['tableBucketArn'] = tableBucketArn;
    return map;
  }

  factory TablePolicyArgs.fromMap(Map<String, dynamic> map) {
    return TablePolicyArgs(
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourcePolicy: map['resourcePolicy'] as String,
      tableBucketArn: map['tableBucketArn'] as String,
    );
  }
}
