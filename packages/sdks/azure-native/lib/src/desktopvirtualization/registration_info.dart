// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a RegistrationInfo definition.
class RegistrationInfo {
  /// Expiration time of registration token.
  final pulumi.Input<String>? expirationTime;

  /// The type of resetting the token.
  final pulumi.Input<String>? registrationTokenOperation;

  /// The registration token base64 encoded string.
  final pulumi.Input<String>? token;

  /// Creates a new [RegistrationInfo].
  /// [expirationTime] Expiration time of registration token.
  /// [registrationTokenOperation] The type of resetting the token.
  /// [token] The registration token base64 encoded string.
  RegistrationInfo({
    this.expirationTime,
    this.registrationTokenOperation,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
      'registrationTokenOperation': ?registrationTokenOperation,
      'token': ?token,
    };
  }

  factory RegistrationInfo.fromMap(Map<String, dynamic> map) {
    return RegistrationInfo(
      expirationTime: (() {
        final guardedValue = map['expirationTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registrationTokenOperation: (() {
        final guardedValue = map['registrationTokenOperation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      token: (() {
        final guardedValue = map['token'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
