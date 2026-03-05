// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOnlineEndpointToken.
class GetOnlineEndpointTokenResult {
  /// Access token for endpoint authentication.
  final String? accessToken;
  /// Access token expiry time (UTC).
  final double? expiryTimeUtc;
  /// Refresh access token after time (UTC).
  final double? refreshAfterTimeUtc;
  /// Access token type.
  final String? tokenType;

  /// Creates a new [GetOnlineEndpointTokenResult].
  /// [accessToken] Access token for endpoint authentication.
  /// [expiryTimeUtc] Access token expiry time (UTC).
  /// [refreshAfterTimeUtc] Refresh access token after time (UTC).
  /// [tokenType] Access token type.
  GetOnlineEndpointTokenResult({
    this.accessToken,
    this.expiryTimeUtc,
    this.refreshAfterTimeUtc,
    this.tokenType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'expiryTimeUtc': ?expiryTimeUtc,
      'refreshAfterTimeUtc': ?refreshAfterTimeUtc,
      'tokenType': ?tokenType,
    };
  }

  factory GetOnlineEndpointTokenResult.fromMap(Map<String, dynamic> map) {
    return GetOnlineEndpointTokenResult(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiryTimeUtc: (() { final guardedValue = map['expiryTimeUtc']; if (guardedValue == null) return null; return guardedValue as double; })(),
      refreshAfterTimeUtc: (() { final guardedValue = map['refreshAfterTimeUtc']; if (guardedValue == null) return null; return guardedValue as double; })(),
      tokenType: (() { final guardedValue = map['tokenType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

