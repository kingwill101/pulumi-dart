// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_sapo_data_oauth_credentials_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials {
  final String? accessToken;
  final String clientId;
  final String clientSecret;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest?
  oauthRequest;
  final String? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials].
  /// [accessToken] Optional.
  /// [clientId] Required.
  /// [clientSecret] Required.
  /// [oauthRequest] Optional.
  /// [refreshToken] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials({
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
      'oauthRequest': ?oauthRequest == null ? null : oauthRequest!.toMap(),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials(
      accessToken: map['accessToken'] == null
          ? null
          : map['accessToken'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      oauthRequest: map['oauthRequest'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest.fromMap(
              (map['oauthRequest'] as Map).cast<String, dynamic>(),
            ),
      refreshToken: map['refreshToken'] == null
          ? null
          : map['refreshToken'] as String,
    );
  }
}
