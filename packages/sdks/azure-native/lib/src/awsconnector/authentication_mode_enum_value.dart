// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AuthenticationModeEnumValue
class AuthenticationModeEnumValue {
  /// Property value
  final pulumi.Input<dynamic>? value;

  /// Creates a new [AuthenticationModeEnumValue].
  /// [value] Property value
  const AuthenticationModeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AuthenticationModeEnumValue.fromMap(Map<String, dynamic> map) {
    return AuthenticationModeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
