// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest {
  /// The code provided by the connector when it has been authenticated via the connected app.
  final String? authCode;

  /// The URL to which the authentication server redirects the browser after authorization has been granted.
  final String? redirectUri;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest].
  /// [authCode] The code provided by the connector when it has been authenticated via the connected app.
  /// [redirectUri] The URL to which the authentication server redirects the browser after authorization has been granted.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest({
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

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest(
      authCode: map['authCode'] == null ? null : map['authCode'] as String,
      redirectUri:
          map['redirectUri'] == null ? null : map['redirectUri'] as String,
    );
  }
}
