// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Minimal set of properties for RegistrationToken definition.
class RegistrationTokenMinimalResponse {
  /// Expiration time of registration token.
  final String? expirationTime;
  /// The registration token base64 encoded string.
  final String? token;

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
      expirationTime: map['expirationTime'] == null ? null : map['expirationTime'] as String,
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}

