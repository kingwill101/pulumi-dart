// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientToken.
class GetClientTokenResult {
  /// OAuth token for Azure Management API and SDK authentication.
  final String? token;

  /// Creates a new [GetClientTokenResult].
  /// [token] OAuth token for Azure Management API and SDK authentication.
  const GetClientTokenResult({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
    };
  }

  factory GetClientTokenResult.fromMap(Map<String, dynamic> map) {
    return GetClientTokenResult(
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
