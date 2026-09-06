// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceTypeEnumValue
class InstanceTypeEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [InstanceTypeEnumValue].
  /// [value] Property value
  const InstanceTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
