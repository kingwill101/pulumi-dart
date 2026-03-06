// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupConfigurationParameter {
  /// The name of the group configuration parameter.
  final pulumi.Input<String> name;
  /// The value or values to be used for the specified parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GroupConfigurationParameter].
  /// [name] The name of the group configuration parameter.
  /// [values] The value or values to be used for the specified parameter.
  const GroupConfigurationParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GroupConfigurationParameter.fromMap(Map<String, dynamic> map) {
    return GroupConfigurationParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

