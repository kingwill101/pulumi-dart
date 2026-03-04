// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EnvironmentVariableTypeEnumValue
class EnvironmentVariableTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVariableTypeEnumValueResponse].
  /// [value] Property value
  EnvironmentVariableTypeEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory EnvironmentVariableTypeEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentVariableTypeEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
