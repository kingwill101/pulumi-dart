// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BootModeValuesEnumValue
class BootModeValuesEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [BootModeValuesEnumValueResponse].
  /// [value] Property value
  const BootModeValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory BootModeValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return BootModeValuesEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
