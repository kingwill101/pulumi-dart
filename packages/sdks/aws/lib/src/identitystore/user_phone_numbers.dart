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
  UserPhoneNumbers({
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
      primary: map['primary'] == null ? null : ((map['primary'] as bool).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

