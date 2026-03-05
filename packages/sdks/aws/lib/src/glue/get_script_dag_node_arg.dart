// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetScriptDagNodeArg {
  /// Name of the argument or property.
  final pulumi.Input<String> name;
  /// Boolean if the value is used as a parameter. Defaults to `false`.
  final pulumi.Input<bool>? param;
  /// Value of the argument or property.
  final pulumi.Input<String> value;

  /// Creates a new [GetScriptDagNodeArg].
  /// [name] Name of the argument or property.
  /// [param] Boolean if the value is used as a parameter. Defaults to `false`.
  /// [value] Value of the argument or property.
  GetScriptDagNodeArg({
    required this.name,
    this.param,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'param': ?param,
      'value': value,
    };
  }

  factory GetScriptDagNodeArg.fromMap(Map<String, dynamic> map) {
    return GetScriptDagNodeArg(
      name: pulumi.Input.fromValue(map['name'] as String),
      param: (() { final guardedValue = map['param']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

