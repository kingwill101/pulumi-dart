// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AuthTypeEnumValue
class AuthTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AuthTypeEnumValue].
  /// [value] Property value
  const AuthTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AuthTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return AuthTypeEnumValue(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

