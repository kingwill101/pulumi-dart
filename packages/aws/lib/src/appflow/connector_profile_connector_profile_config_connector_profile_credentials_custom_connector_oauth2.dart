// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_custom_connector_oauth2_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2 {
  final String? accessToken;
  final String? clientId;
  final String? clientSecret;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest? oauthRequest;
  final String? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2].
  /// [accessToken] Optional.
  /// [clientId] Optional.
  /// [clientSecret] Optional.
  /// [oauthRequest] Optional.
  /// [refreshToken] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2({
    this.accessToken,
    this.clientId,
    this.clientSecret,
    this.oauthRequest,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'oauthRequest': ?oauthRequest == null ? null : oauthRequest!.toMap(),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      oauthRequest: map['oauthRequest'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorOauth2OauthRequest.fromMap((map['oauthRequest'] as Map).cast<String, dynamic>()),
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
    );
  }
}

