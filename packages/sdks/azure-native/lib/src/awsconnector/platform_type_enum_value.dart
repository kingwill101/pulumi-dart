// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PlatformTypeEnumValue
class PlatformTypeEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [PlatformTypeEnumValue].
  /// [value] Property value
  const PlatformTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlatformTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return PlatformTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
