// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReadOnlyInstanceParameter {
  /// The parameter name.
  final pulumi.Input<String> name;
  /// The parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [ReadOnlyInstanceParameter].
  /// [name] The parameter name.
  /// [value] The parameter value.
  ReadOnlyInstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory ReadOnlyInstanceParameter.fromMap(Map<String, dynamic> map) {
    return ReadOnlyInstanceParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

