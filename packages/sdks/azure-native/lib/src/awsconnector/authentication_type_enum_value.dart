// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AuthenticationTypeEnumValue
class AuthenticationTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [AuthenticationTypeEnumValue].
  /// [value] Property value
  AuthenticationTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory AuthenticationTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return AuthenticationTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

