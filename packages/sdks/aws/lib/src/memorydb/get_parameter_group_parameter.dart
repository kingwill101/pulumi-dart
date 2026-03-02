// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetParameterGroupParameter {
  /// Name of the parameter group.
  final pulumi.Input<String> name;
  /// Value of the parameter.
  final pulumi.Input<String> value;

  /// Creates a new [GetParameterGroupParameter].
  /// [name] Name of the parameter group.
  /// [value] Value of the parameter.
  GetParameterGroupParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return GetParameterGroupParameter(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

