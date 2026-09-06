// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PlatformValuesEnumValue
class PlatformValuesEnumValueResponse {
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [PlatformValuesEnumValueResponse].
  /// [value] Property value
  const PlatformValuesEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory PlatformValuesEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return PlatformValuesEnumValueResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
