// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClientToken.
class GetClientTokenResult {
  /// The OAuth2 access token used by the client to authenticate against the Google Cloud API.
  final String accessToken;

  /// Expiry is the optional expiration time of the access token. If zero, TokenSource implementations will reuse the same token forever and RefreshToken or equivalent mechanisms for that TokenSource will not be used.
  final String? expiry;

  /// RefreshToken is a token that's used by the application (as opposed to the user) to refresh the access token if it expires.
  final String? refreshToken;

  /// The type of auth token. Possible types are "Bearer", "MAC", "Basic".
  final String tokenType;

  GetClientTokenResult({
    required this.accessToken,
    this.expiry,
    this.refreshToken,
    required this.tokenType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessToken'] = accessToken;
    final expiryValue = expiry;
    if (expiryValue != null) {
      map['expiry'] = expiryValue;
    }
    final refreshTokenValue = refreshToken;
    if (refreshTokenValue != null) {
      map['refreshToken'] = refreshTokenValue;
    }
    map['tokenType'] = tokenType;
    return map;
  }

  factory GetClientTokenResult.fromMap(Map<String, dynamic> map) {
    return GetClientTokenResult(
      accessToken: map['accessToken'] as String,
      expiry: map['expiry'] == null ? null : map['expiry'] as String,
      refreshToken:
          map['refreshToken'] == null ? null : map['refreshToken'] as String,
      tokenType: map['tokenType'] as String,
    );
  }
}
