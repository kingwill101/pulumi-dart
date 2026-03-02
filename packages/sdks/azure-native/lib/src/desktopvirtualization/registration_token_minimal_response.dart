// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Minimal set of properties for RegistrationToken definition.
class RegistrationTokenMinimalResponse {
  /// Expiration time of registration token.
  final pulumi.Input<String>? expirationTime;
  /// The registration token base64 encoded string.
  final pulumi.Input<String>? token;

  /// Creates a new [RegistrationTokenMinimalResponse].
  /// [expirationTime] Expiration time of registration token.
  /// [token] The registration token base64 encoded string.
  RegistrationTokenMinimalResponse({
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
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime']! as String).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
    );
  }
}

