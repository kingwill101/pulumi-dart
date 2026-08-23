// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters of a script block.
class ScriptActivityParameterResponse {
  /// The direction of the parameter.
  final pulumi.Input<String>? direction;
  /// The name of the parameter. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? name;
  /// The size of the output direction parameter.
  final pulumi.Input<int>? size;
  /// The type of the parameter.
  final pulumi.Input<String>? type;
  /// The value of the parameter. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? value;

  /// Creates a new [ScriptActivityParameterResponse].
  /// [direction] The direction of the parameter.
  /// [name] The name of the parameter. Type: string (or Expression with resultType string).
  /// [size] The size of the output direction parameter.
  /// [type] The type of the parameter.
  /// [value] The value of the parameter. Type: string (or Expression with resultType string).
  const ScriptActivityParameterResponse({
    this.direction,
    this.name,
    this.size,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'name': ?name,
      'size': ?size,
      'type': ?type,
      'value': ?value,
    };
  }

  factory ScriptActivityParameterResponse.fromMap(Map<String, dynamic> map) {
    return ScriptActivityParameterResponse(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
