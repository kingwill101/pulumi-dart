// ignore_for_file: unused_element, unnecessary_cast

import '../connector_profile_connector_profile_config_connector_profile_credentials_google_analytics_oauth_request/connector_profile_connector_profile_config_connector_profile_credentials_google_analytics_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics {
  final String? accessToken;
  final String clientId;
  final String clientSecret;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest?
      oauthRequest;
  final String? refreshToken;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValue = accessToken;
    if (accessTokenValue != null) {
      map['accessToken'] = accessTokenValue;
    }
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    final oauthRequestValue = oauthRequest;
    if (oauthRequestValue != null) {
      map['oauthRequest'] = oauthRequestValue.toMap();
    }
    final refreshTokenValue = refreshToken;
    if (refreshTokenValue != null) {
      map['refreshToken'] = refreshTokenValue;
    }
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics(
      accessToken:
          map['accessToken'] == null ? null : map['accessToken'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      oauthRequest: map['oauthRequest'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest
              .fromMap((map['oauthRequest'] as Map).cast<String, dynamic>()),
      refreshToken:
          map['refreshToken'] == null ? null : map['refreshToken'] as String,
    );
  }
}
