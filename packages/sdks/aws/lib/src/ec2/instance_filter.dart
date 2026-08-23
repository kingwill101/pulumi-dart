// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFilter {
  /// Name of the launch template. Conflicts with `id`.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [InstanceFilter].
  /// [name] Name of the launch template. Conflicts with `id`.
  /// [values] Required.
  const InstanceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory InstanceFilter.fromMap(Map<String, dynamic> map) {
    return InstanceFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
