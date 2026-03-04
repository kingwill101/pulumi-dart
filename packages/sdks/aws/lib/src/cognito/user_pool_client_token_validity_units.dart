// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolClientTokenValidityUnits {
  /// Time unit in for the value in `access_token_validity`, defaults to `hours`.
  final pulumi.Input<String>? accessToken;

  /// Time unit in for the value in `id_token_validity`, defaults to `hours`.
  final pulumi.Input<String>? idToken;

  /// Time unit in for the value in `refresh_token_validity`, defaults to `days`.
  final pulumi.Input<String>? refreshToken;

  /// Creates a new [UserPoolClientTokenValidityUnits].
  /// [accessToken] Time unit in for the value in `access_token_validity`, defaults to `hours`.
  /// [idToken] Time unit in for the value in `id_token_validity`, defaults to `hours`.
  /// [refreshToken] Time unit in for the value in `refresh_token_validity`, defaults to `days`.
  UserPoolClientTokenValidityUnits({
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

  factory UserPoolClientTokenValidityUnits.fromMap(Map<String, dynamic> map) {
    return UserPoolClientTokenValidityUnits(
      accessToken: (() {
        final guardedValue = map['accessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      idToken: (() {
        final guardedValue = map['idToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshToken: (() {
        final guardedValue = map['refreshToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
