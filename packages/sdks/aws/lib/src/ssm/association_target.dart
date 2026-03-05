// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssociationTarget {
  /// Either `InstanceIds` or `tag:Tag Name` to specify an EC2 tag.
  final pulumi.Input<String> key;
  /// User-defined criteria that maps to Key. A list of instance IDs or tag values.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AssociationTarget].
  /// [key] Either `InstanceIds` or `tag:Tag Name` to specify an EC2 tag.
  /// [values] User-defined criteria that maps to Key. A list of instance IDs or tag values.
  AssociationTarget({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory AssociationTarget.fromMap(Map<String, dynamic> map) {
    return AssociationTarget(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

