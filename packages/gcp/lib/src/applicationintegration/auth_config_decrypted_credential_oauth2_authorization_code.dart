// ignore_for_file: unused_element, unnecessary_cast

class AuthConfigDecryptedCredentialOauth2AuthorizationCode {
  /// The auth url endpoint to send the auth code request to.
  final String? authEndpoint;

  /// The client's id.
  final String? clientId;

  /// The client's secret.
  final String? clientSecret;

  /// A space-delimited list of requested scope permissions.
  final String? scope;

  /// The token url endpoint to send the token request to.
  final String? tokenEndpoint;

  /// Creates a new [AuthConfigDecryptedCredentialOauth2AuthorizationCode].
  /// [authEndpoint] The auth url endpoint to send the auth code request to.
  /// [clientId] The client's id.
  /// [clientSecret] The client's secret.
  /// [scope] A space-delimited list of requested scope permissions.
  /// [tokenEndpoint] The token url endpoint to send the token request to.
  AuthConfigDecryptedCredentialOauth2AuthorizationCode({
    this.authEndpoint,
    this.clientId,
    this.clientSecret,
    this.scope,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authEndpointValue = authEndpoint;
    if (authEndpointValue != null) {
      map['authEndpoint'] = authEndpointValue;
    }
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final clientSecretValue = clientSecret;
    if (clientSecretValue != null) {
      map['clientSecret'] = clientSecretValue;
    }
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final tokenEndpointValue = tokenEndpoint;
    if (tokenEndpointValue != null) {
      map['tokenEndpoint'] = tokenEndpointValue;
    }
    return map;
  }

  factory AuthConfigDecryptedCredentialOauth2AuthorizationCode.fromMap(
      Map<String, dynamic> map) {
    return AuthConfigDecryptedCredentialOauth2AuthorizationCode(
      authEndpoint:
          map['authEndpoint'] == null ? null : map['authEndpoint'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret:
          map['clientSecret'] == null ? null : map['clientSecret'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tokenEndpoint:
          map['tokenEndpoint'] == null ? null : map['tokenEndpoint'] as String,
    );
  }
}
