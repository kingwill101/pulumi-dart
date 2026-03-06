// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProvisionedProductProvisioningParameter {
  /// Parameter key.
  final pulumi.Input<String> key;
  /// Whether to ignore `value` and keep the previous parameter value. Ignored when initially provisioning a product.
  final pulumi.Input<bool>? usePreviousValue;
  /// Parameter value.
  final pulumi.Input<String>? value;

  /// Creates a new [ProvisionedProductProvisioningParameter].
  /// [key] Parameter key.
  /// [usePreviousValue] Whether to ignore `value` and keep the previous parameter value. Ignored when initially provisioning a product.
  /// [value] Parameter value.
  const ProvisionedProductProvisioningParameter({
    required this.key,
    this.usePreviousValue,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'usePreviousValue': ?usePreviousValue,
      'value': ?value,
    };
  }

  factory ProvisionedProductProvisioningParameter.fromMap(Map<String, dynamic> map) {
    return ProvisionedProductProvisioningParameter(
      key: pulumi.Input.fromValue(map['key'] as String),
      usePreviousValue: (() { final guardedValue = map['usePreviousValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

