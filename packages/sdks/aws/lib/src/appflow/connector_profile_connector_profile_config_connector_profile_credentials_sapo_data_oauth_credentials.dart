// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_sapo_data_oauth_credentials_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials {
  /// Credentials used to access protected Zendesk resources.
  final pulumi.Input<String?>? accessToken;
  /// Identifier for the desired client.
  final pulumi.Input<String> clientId;
  /// Client secret used by the OAuth client to authenticate to the authorization server.
  final pulumi.Input<String> clientSecret;
  /// OAuth requirement needed to request security tokens from the connector endpoint. See `connector_profile_config.connector_profile_credentials.zendesk.oauth_request` Block for details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest?>? oauthRequest;
  /// Refresh token used to refresh an expired access token.
  final pulumi.Input<String?>? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials].
  /// [accessToken] Credentials used to access protected Zendesk resources.
  /// [clientId] Identifier for the desired client.
  /// [clientSecret] Client secret used by the OAuth client to authenticate to the authorization server.
  /// [oauthRequest] OAuth requirement needed to request security tokens from the connector endpoint. See `connector_profile_config.connector_profile_credentials.zendesk.oauth_request` Block for details.
  /// [refreshToken] Refresh token used to refresh an expired access token.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials({
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
      'oauthRequest': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest, Map<String, dynamic>>(oauthRequest, (value) => value.toMap()),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentials(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      oauthRequest: (() { final guardedValue = map['oauthRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataOauthCredentialsOauthRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
