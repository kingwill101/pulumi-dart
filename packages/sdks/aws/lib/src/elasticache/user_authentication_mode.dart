// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAuthenticationMode {
  final pulumi.Input<int?>? passwordCount;
  /// Specifies the passwords to use for authentication if `type` is set to `password`.
  final pulumi.Input<List<String>?>? passwords;
  /// Specifies the authentication type. Possible options are: `password`, `no-password-required` or `iam`.
  final pulumi.Input<String> type;

  /// Creates a new [UserAuthenticationMode].
  /// [passwordCount] Optional.
  /// [passwords] Specifies the passwords to use for authentication if `type` is set to `password`.
  /// [type] Specifies the authentication type. Possible options are: `password`, `no-password-required` or `iam`.
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
      passwordCount: (() { final guardedValue = map['passwordCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      passwords: (() { final guardedValue = map['passwords']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
