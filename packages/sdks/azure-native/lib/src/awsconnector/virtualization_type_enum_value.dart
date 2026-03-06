// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VirtualizationTypeEnumValue
class VirtualizationTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [VirtualizationTypeEnumValue].
  /// [value] Property value
  const VirtualizationTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory VirtualizationTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return VirtualizationTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

