// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest {
  /// The code provided by the connector when it has been authenticated via the connected app.
  final String? authCode;

  /// The URL to which the authentication server redirects the browser after authorization has been granted.
  final String? redirectUri;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest].
  /// [authCode] The code provided by the connector when it has been authenticated via the connected app.
  /// [redirectUri] The URL to which the authentication server redirects the browser after authorization has been granted.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest({
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

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest(
      authCode: map['authCode'] == null ? null : map['authCode'] as String,
      redirectUri:
          map['redirectUri'] == null ? null : map['redirectUri'] as String,
    );
  }
}
