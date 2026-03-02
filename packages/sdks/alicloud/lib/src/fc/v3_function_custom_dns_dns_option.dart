// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionCustomDnsDnsOption {
  /// Configuration Item Name
  final pulumi.Input<String>? name;
  /// Configuration Item Value
  final pulumi.Input<String>? value;

  /// Creates a new [V3FunctionCustomDnsDnsOption].
  /// [name] Configuration Item Name
  /// [value] Configuration Item Value
  V3FunctionCustomDnsDnsOption({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory V3FunctionCustomDnsDnsOption.fromMap(Map<String, dynamic> map) {
    return V3FunctionCustomDnsDnsOption(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

