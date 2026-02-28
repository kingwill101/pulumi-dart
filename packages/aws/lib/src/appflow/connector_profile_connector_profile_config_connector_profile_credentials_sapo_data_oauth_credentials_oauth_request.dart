// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest {
  /// The code provided by the connector when it has been authenticated via the connected app.
  final String? authCode;

  /// The URL to which the authentication server redirects the browser after authorization has been granted.
  final String? redirectUri;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest].
  /// [authCode] The code provided by the connector when it has been authenticated via the connected app.
  /// [redirectUri] The URL to which the authentication server redirects the browser after authorization has been granted.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest({
    this.authCode,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authCodeValue = authCode;
    if (authCodeValue != null) {
      map['authCode'] = authCodeValue;
    }
    final redirectUriValue = redirectUri;
    if (redirectUriValue != null) {
      map['redirectUri'] = redirectUriValue;
    }
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest(
      authCode: map['authCode'] == null ? null : map['authCode'] as String,
      redirectUri:
          map['redirectUri'] == null ? null : map['redirectUri'] as String,
    );
  }
}
