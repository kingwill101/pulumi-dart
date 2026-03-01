// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_honeycode_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode {
  final String? accessToken;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest? oauthRequest;
  final String? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode].
  /// [accessToken] Optional.
  /// [oauthRequest] Optional.
  /// [refreshToken] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode({
    this.accessToken,
    this.oauthRequest,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'oauthRequest': ?oauthRequest == null ? null : oauthRequest!.toMap(),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      oauthRequest: map['oauthRequest'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest.fromMap((map['oauthRequest'] as Map).cast<String, dynamic>()),
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
    );
  }
}

