// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedUserPoolClientTokenValidityUnits {
  /// Time unit for the value in `accessTokenValidity` and defaults to `hours`.
  final pulumi.Input<String?>? accessToken;
  /// Time unit for the value in `idTokenValidity`, and it defaults to `hours`.
  final pulumi.Input<String?>? idToken;
  /// Time unit for the value in `refreshTokenValidity` and defaults to `days`.
  final pulumi.Input<String?>? refreshToken;

  /// Creates a new [ManagedUserPoolClientTokenValidityUnits].
  /// [accessToken] Time unit for the value in `accessTokenValidity` and defaults to `hours`.
  /// [idToken] Time unit for the value in `idTokenValidity`, and it defaults to `hours`.
  /// [refreshToken] Time unit for the value in `refreshTokenValidity` and defaults to `days`.
  const ManagedUserPoolClientTokenValidityUnits({
    this.accessToken,
    this.idToken,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'idToken': ?idToken,
      'refreshToken': ?refreshToken,
    };
  }

  factory ManagedUserPoolClientTokenValidityUnits.fromMap(Map<String, dynamic> map) {
    return ManagedUserPoolClientTokenValidityUnits(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idToken: (() { final guardedValue = map['idToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
