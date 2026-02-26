// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TablePolicy.
class TablePolicyArgs {
  /// Name of the table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final Input<String>? name;

  /// Name of the namespace for this table.
  /// Must be between 1 and 255 characters in length.
  /// Can consist of lowercase letters, numbers, and underscores, and must begin and end with a lowercase letter or number.
  final Input<String> namespace;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Amazon Web Services resource-based policy document in JSON format.
  final Input<String> resourcePolicy;

  /// ARN referencing the Table Bucket that contains this Namespace.
  final Input<String> tableBucketArn;

  TablePolicyArgs({
    this.name,
    required this.namespace,
    this.region,
    required this.resourcePolicy,
    required this.tableBucketArn,
  });

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
      name: Input.asOptionalInput<String>(map['name']),
      namespace: Input.asInput<String>(map['namespace']),
      region: Input.asOptionalInput<String>(map['region']),
      resourcePolicy: Input.asInput<String>(map['resourcePolicy']),
      tableBucketArn: Input.asInput<String>(map['tableBucketArn']),
    );
  }
}
