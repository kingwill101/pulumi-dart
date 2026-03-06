// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceBootModeValuesEnumValue
class InstanceBootModeValuesEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceBootModeValuesEnumValue].
  /// [value] Property value
  const InstanceBootModeValuesEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory InstanceBootModeValuesEnumValue.fromMap(Map<String, dynamic> map) {
    return InstanceBootModeValuesEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

