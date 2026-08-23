// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BootModeValuesEnumValue
class BootModeValuesEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [BootModeValuesEnumValue].
  /// [value] Property value
  const BootModeValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory BootModeValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return BootModeValuesEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
