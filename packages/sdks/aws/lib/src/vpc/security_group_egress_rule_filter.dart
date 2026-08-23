// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGroupEgressRuleFilter {
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [SecurityGroupEgressRuleFilter].
  /// [name] Required.
  /// [values] Required.
  const SecurityGroupEgressRuleFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory SecurityGroupEgressRuleFilter.fromMap(Map<String, dynamic> map) {
    return SecurityGroupEgressRuleFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
