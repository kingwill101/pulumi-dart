// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssociationTarget {
  /// User-defined criteria for sending commands that target managed nodes that meet the criteria. See the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_Target.html) for the list of available keys.
  final pulumi.Input<String> key;
  /// List of values that correspond to the specified `key`. See the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_Target.html) for details.
  final pulumi.Input<List<String>> values;

  /// Creates a new [AssociationTarget].
  /// [key] User-defined criteria for sending commands that target managed nodes that meet the criteria. See the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_Target.html) for the list of available keys.
  /// [values] List of values that correspond to the specified `key`. See the [AWS documentation](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_Target.html) for details.
  const AssociationTarget({
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
