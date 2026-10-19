// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAuthenticationMode {
  final pulumi.Input<int?>? passwordCount;
  /// Set of passwords used for authentication if `type` is set to `password`. You can create up to two passwords for each user.
  final pulumi.Input<List<String>?>? passwords;
  /// Type of authentication. Valid values are `password` or `iam`.
  final pulumi.Input<String> type;

  /// Creates a new [UserAuthenticationMode].
  /// [passwordCount] Optional.
  /// [passwords] Set of passwords used for authentication if `type` is set to `password`. You can create up to two passwords for each user.
  /// [type] Type of authentication. Valid values are `password` or `iam`.
  const UserAuthenticationMode({
    this.passwordCount,
    this.passwords,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordCount': ?passwordCount,
      'passwords': ?passwords,
      'type': type,
    };
  }

  factory UserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return UserAuthenticationMode(
      passwordCount: (() { final guardedValue = map['passwordCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      passwords: (() { final guardedValue = map['passwords']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
