// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPhoneNumbers {
  /// When `true`, this is the primary phone number associated with the user.
  final pulumi.Input<bool>? primary;
  /// The type of phone number.
  final pulumi.Input<String>? type;
  /// The user's phone number.
  final pulumi.Input<String>? value;

  /// Creates a new [UserPhoneNumbers].
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [type] The type of phone number.
  /// [value] The user's phone number.
  const UserPhoneNumbers({
    this.primary,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
      'type': ?type,
      'value': ?value,
    };
  }

  factory UserPhoneNumbers.fromMap(Map<String, dynamic> map) {
    return UserPhoneNumbers(
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

