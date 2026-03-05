// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2FunctionCustomDnsDnsOption {
  /// DNS option name.
  final pulumi.Input<String>? name;
  /// DNS option value.
  final pulumi.Input<String>? value;

  /// Creates a new [V2FunctionCustomDnsDnsOption].
  /// [name] DNS option name.
  /// [value] DNS option value.
  V2FunctionCustomDnsDnsOption({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory V2FunctionCustomDnsDnsOption.fromMap(Map<String, dynamic> map) {
    return V2FunctionCustomDnsDnsOption(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

