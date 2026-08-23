// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubnetFilter {
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [SubnetFilter].
  /// [name] Required.
  /// [values] Required.
  const SubnetFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory SubnetFilter.fromMap(Map<String, dynamic> map) {
    return SubnetFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
