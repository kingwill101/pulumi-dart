// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefaultSecurityGroupFilter {
  /// Name of the security group.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [DefaultSecurityGroupFilter].
  /// [name] Name of the security group.
  /// [values] Required.
  const DefaultSecurityGroupFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory DefaultSecurityGroupFilter.fromMap(Map<String, dynamic> map) {
    return DefaultSecurityGroupFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
