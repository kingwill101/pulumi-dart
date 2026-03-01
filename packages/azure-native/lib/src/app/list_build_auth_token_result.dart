// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listBuildAuthToken.
class ListBuildAuthTokenResult {
  /// Token expiration date.
  final String expires;
  /// Authentication token.
  final String token;

  /// Creates a new [ListBuildAuthTokenResult].
  /// [expires] Token expiration date.
  /// [token] Authentication token.
  ListBuildAuthTokenResult({
    required this.expires,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expires': expires,
      'token': token,
    };
  }

  factory ListBuildAuthTokenResult.fromMap(Map<String, dynamic> map) {
    return ListBuildAuthTokenResult(
      expires: map['expires'] as String,
      token: map['token'] as String,
    );
  }
}

