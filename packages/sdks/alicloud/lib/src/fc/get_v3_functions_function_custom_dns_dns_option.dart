// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionCustomDnsDnsOption {
  /// Configuration Item Name.
  final pulumi.Input<String> name;
  /// Configuration Item Value.
  final pulumi.Input<String> value;

  /// Creates a new [GetV3FunctionsFunctionCustomDnsDnsOption].
  /// [name] Configuration Item Name.
  /// [value] Configuration Item Value.
  GetV3FunctionsFunctionCustomDnsDnsOption({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetV3FunctionsFunctionCustomDnsDnsOption.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionCustomDnsDnsOption(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

