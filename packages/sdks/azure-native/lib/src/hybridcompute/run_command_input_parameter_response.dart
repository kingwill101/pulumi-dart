// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the properties of a run command parameter.
class RunCommandInputParameterResponse {
  /// The run command parameter name.
  final pulumi.Input<String> name;
  /// The run command parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [RunCommandInputParameterResponse].
  /// [name] The run command parameter name.
  /// [value] The run command parameter value.
  RunCommandInputParameterResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RunCommandInputParameterResponse.fromMap(Map<String, dynamic> map) {
    return RunCommandInputParameterResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

