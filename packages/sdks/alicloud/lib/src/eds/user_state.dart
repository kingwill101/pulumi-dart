// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// The email of the user email.
  final pulumi.Input<String>? email;
  /// The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  final pulumi.Input<String>? endUserId;
  /// The password of the user password.
  final pulumi.Input<String>? password;
  /// The phone of the mobile phone number.
  final pulumi.Input<String>? phone;
  /// The status of the resource. Valid values: `Unlocked`, `Locked`.
  final pulumi.Input<String>? status;

  /// Creates a new [UserState].
  /// [email] The email of the user email.
  /// [endUserId] The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  /// [password] The password of the user password.
  /// [phone] The phone of the mobile phone number.
  /// [status] The status of the resource. Valid values: `Unlocked`, `Locked`.
  const UserState({
    this.email,
    this.endUserId,
    this.password,
    this.phone,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'endUserId': ?endUserId,
      'password': ?password,
      'phone': ?phone,
      'status': ?status,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endUserId: (() { final guardedValue = map['endUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

