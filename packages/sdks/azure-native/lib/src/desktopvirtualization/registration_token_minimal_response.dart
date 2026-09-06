// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Minimal set of properties for RegistrationToken definition.
class RegistrationTokenMinimalResponse {
  /// Expiration time of registration token.
  final pulumi.Input<String?>? expirationTime;
  /// The registration token base64 encoded string.
  final pulumi.Input<String?>? token;

  /// Creates a new [RegistrationTokenMinimalResponse].
  /// [expirationTime] Expiration time of registration token.
  /// [token] The registration token base64 encoded string.
  const RegistrationTokenMinimalResponse({
    this.expirationTime,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': ?expirationTime,
      'token': ?token,
    };
  }

  factory RegistrationTokenMinimalResponse.fromMap(Map<String, dynamic> map) {
    return RegistrationTokenMinimalResponse(
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
