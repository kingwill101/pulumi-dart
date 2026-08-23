// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInterfaceFilter {
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [NetworkInterfaceFilter].
  /// [name] Required.
  /// [values] Required.
  const NetworkInterfaceFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory NetworkInterfaceFilter.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
