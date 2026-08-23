// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteTableFilter {
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [RouteTableFilter].
  /// [name] Required.
  /// [values] Required.
  const RouteTableFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory RouteTableFilter.fromMap(Map<String, dynamic> map) {
    return RouteTableFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
