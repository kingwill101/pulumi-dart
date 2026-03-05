// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAuthenticationMode {
  /// Number of passwords belonging to the user if `type` is set to `password`.
  final pulumi.Input<int>? passwordCount;
  /// Set of passwords used for authentication if `type` is set to `password`. You can create up to two passwords for each user.
  final pulumi.Input<List<String>>? passwords;
  /// Specifies the authentication type. Valid values are: `password` or `iam`.
  final pulumi.Input<String> type;

  /// Creates a new [UserAuthenticationMode].
  /// [passwordCount] Number of passwords belonging to the user if `type` is set to `password`.
  /// [passwords] Set of passwords used for authentication if `type` is set to `password`. You can create up to two passwords for each user.
  /// [type] Specifies the authentication type. Valid values are: `password` or `iam`.
  UserAuthenticationMode({
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
      passwordCount: (() { final guardedValue = map['passwordCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      passwords: (() { final guardedValue = map['passwords']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

