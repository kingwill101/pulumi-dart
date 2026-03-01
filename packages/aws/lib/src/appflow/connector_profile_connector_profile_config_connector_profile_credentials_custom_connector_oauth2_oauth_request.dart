// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest {
  /// The code provided by the connector when it has been authenticated via the connected app.
  final String? authCode;
  /// The URL to which the authentication server redirects the browser after authorization has been granted.
  final String? redirectUri;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest].
  /// [authCode] The code provided by the connector when it has been authenticated via the connected app.
  /// [redirectUri] The URL to which the authentication server redirects the browser after authorization has been granted.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest({
    this.authCode,
    this.redirectUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
      'redirectUri': ?redirectUri,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest(
      authCode: map['authCode'] == null ? null : map['authCode'] as String,
      redirectUri: map['redirectUri'] == null ? null : map['redirectUri'] as String,
    );
  }
}

