// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceBootModeValuesEnumValue
class InstanceBootModeValuesEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceBootModeValuesEnumValueResponse].
  /// [value] Property value
  InstanceBootModeValuesEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory InstanceBootModeValuesEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceBootModeValuesEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
