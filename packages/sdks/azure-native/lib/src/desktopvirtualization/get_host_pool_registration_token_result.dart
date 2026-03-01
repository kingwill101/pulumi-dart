// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getHostPoolRegistrationToken.
class GetHostPoolRegistrationTokenResult {
  /// Expiration time of registration token.
  final String? expirationTime;
  /// The type of resetting the token.
  final String? registrationTokenOperation;
  /// The registration token base64 encoded string.
  final String? token;

  /// Creates a new [GetHostPoolRegistrationTokenResult].
  /// [expirationTime] Expiration time of registration token.
  /// [registrationTokenOperation] The type of resetting the token.
  /// [token] The registration token base64 encoded string.
  GetHostPoolRegistrationTokenResult({
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

  factory GetHostPoolRegistrationTokenResult.fromMap(Map<String, dynamic> map) {
    return GetHostPoolRegistrationTokenResult(
      expirationTime: map['expirationTime'] == null ? null : map['expirationTime'] as String,
      registrationTokenOperation: map['registrationTokenOperation'] == null ? null : map['registrationTokenOperation'] as String,
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}

