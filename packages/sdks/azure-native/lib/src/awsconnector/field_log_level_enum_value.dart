// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FieldLogLevelEnumValue
class FieldLogLevelEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [FieldLogLevelEnumValue].
  /// [value] Property value
  const FieldLogLevelEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory FieldLogLevelEnumValue.fromMap(Map<String, dynamic> map) {
    return FieldLogLevelEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
