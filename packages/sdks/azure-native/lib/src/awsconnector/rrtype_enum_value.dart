// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RRTypeEnumValue
class RRTypeEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [RRTypeEnumValue].
  /// [value] Property value
  const RRTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory RRTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return RRTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
