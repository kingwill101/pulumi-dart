// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listBuildAuthToken.
class ListBuildAuthTokenResult {
  /// Token expiration date.
  final String? expires;
  /// Authentication token.
  final String? token;

  /// Creates a new [ListBuildAuthTokenResult].
  /// [expires] Token expiration date.
  /// [token] Authentication token.
  const ListBuildAuthTokenResult({
    this.expires,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expires': ?expires,
      'token': ?token,
    };
  }

  factory ListBuildAuthTokenResult.fromMap(Map<String, dynamic> map) {
    return ListBuildAuthTokenResult(
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return guardedValue as String; })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
