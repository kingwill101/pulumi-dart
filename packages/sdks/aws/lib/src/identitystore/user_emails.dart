// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserEmails {
  /// When `true`, this is the primary email associated with the user.
  final pulumi.Input<bool>? primary;

  /// The type of email.
  final pulumi.Input<String>? type;

  /// The email address. This value must be unique across the identity store.
  final pulumi.Input<String>? value;

  /// Creates a new [UserEmails].
  /// [primary] When `true`, this is the primary email associated with the user.
  /// [type] The type of email.
  /// [value] The email address. This value must be unique across the identity store.
  UserEmails({this.primary, this.type, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
      'type': ?type,
      'value': ?value,
    };
  }

  factory UserEmails.fromMap(Map<String, dynamic> map) {
    return UserEmails(
      primary: (() {
        final guardedValue = map['primary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
