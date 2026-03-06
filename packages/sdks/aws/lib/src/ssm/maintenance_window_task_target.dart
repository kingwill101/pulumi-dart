// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaintenanceWindowTaskTarget {
  final pulumi.Input<String> key;
  /// The array of strings.
  final pulumi.Input<List<String>> values;

  /// Creates a new [MaintenanceWindowTaskTarget].
  /// [key] Required.
  /// [values] The array of strings.
  const MaintenanceWindowTaskTarget({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory MaintenanceWindowTaskTarget.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTarget(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

