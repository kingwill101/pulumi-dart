// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PlatformValuesEnumValue
class PlatformValuesEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [PlatformValuesEnumValue].
  /// [value] Property value
  const PlatformValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlatformValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return PlatformValuesEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
