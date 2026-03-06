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
  const GetHostPoolRegistrationTokenResult({
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
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationTokenOperation: (() { final guardedValue = map['registrationTokenOperation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

