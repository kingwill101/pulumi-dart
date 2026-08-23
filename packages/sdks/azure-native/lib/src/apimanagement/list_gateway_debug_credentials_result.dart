// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listGatewayDebugCredentials.
class ListGatewayDebugCredentialsResult {
  /// Gateway debug token.
  final String? token;

  /// Creates a new [ListGatewayDebugCredentialsResult].
  /// [token] Gateway debug token.
  const ListGatewayDebugCredentialsResult({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
    };
  }

  factory ListGatewayDebugCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListGatewayDebugCredentialsResult(
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
