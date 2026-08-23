// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGroupFilter {
  /// Name of the security group. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [SecurityGroupFilter].
  /// [name] Name of the security group. If omitted, the provider will assign a random, unique name.
  /// [values] Required.
  const SecurityGroupFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory SecurityGroupFilter.fromMap(Map<String, dynamic> map) {
    return SecurityGroupFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
