// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_google_analytics_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics {
  final pulumi.Input<String>? accessToken;
  final pulumi.Input<String> clientId;
  final pulumi.Input<String> clientSecret;
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest>? oauthRequest;
  final pulumi.Input<String>? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics].
  /// [accessToken] Optional.
  /// [clientId] Required.
  /// [clientSecret] Required.
  /// [oauthRequest] Optional.
  /// [refreshToken] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'oauthRequest': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest, Map<String, dynamic>>(oauthRequest, (value) => value.toMap()),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalytics(
      accessToken: map['accessToken'] == null ? null : ((map['accessToken'] as String).input()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      oauthRequest: map['oauthRequest'] == null ? null : ((ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsGoogleAnalyticsOauthRequest.fromMap((map['oauthRequest']! as Map).cast<String, dynamic>())).input()).input(),
      refreshToken: map['refreshToken'] == null ? null : ((map['refreshToken'] as String).input()).input(),
    );
  }
}

