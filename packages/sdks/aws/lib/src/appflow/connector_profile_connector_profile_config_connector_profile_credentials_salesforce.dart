// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_salesforce_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce {
  /// Credentials used to access protected Zendesk resources.
  final pulumi.Input<String>? accessToken;
  /// Secret manager ARN, which contains the client ID and client secret of the connected app.
  final pulumi.Input<String>? clientCredentialsArn;
  /// JSON web token (JWT) that authorizes access to Salesforce records.
  final pulumi.Input<String>? jwtToken;
  /// OAuth 2.0 grant type used by the connector for OAuth 2.0 authentication. One of: `AUTHORIZATION_CODE`, `CLIENT_CREDENTIALS`.
  final pulumi.Input<String>? oauth2GrantType;
  /// OAuth requirement needed to request security tokens from the connector endpoint. See `connector_profile_config.connector_profile_credentials.zendesk.oauth_request` Block for details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest>? oauthRequest;
  /// Refresh token used to refresh an expired access token.
  final pulumi.Input<String>? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce].
  /// [accessToken] Credentials used to access protected Zendesk resources.
  /// [clientCredentialsArn] Secret manager ARN, which contains the client ID and client secret of the connected app.
  /// [jwtToken] JSON web token (JWT) that authorizes access to Salesforce records.
  /// [oauth2GrantType] OAuth 2.0 grant type used by the connector for OAuth 2.0 authentication. One of: `AUTHORIZATION_CODE`, `CLIENT_CREDENTIALS`.
  /// [oauthRequest] OAuth requirement needed to request security tokens from the connector endpoint. See `connector_profile_config.connector_profile_credentials.zendesk.oauth_request` Block for details.
  /// [refreshToken] Refresh token used to refresh an expired access token.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce({
    this.accessToken,
    this.clientCredentialsArn,
    this.jwtToken,
    this.oauth2GrantType,
    this.oauthRequest,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'clientCredentialsArn': ?clientCredentialsArn,
      'jwtToken': ?jwtToken,
      'oauth2GrantType': ?oauth2GrantType,
      'oauthRequest': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest, Map<String, dynamic>>(oauthRequest, (value) => value.toMap()),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce(
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCredentialsArn: (() { final guardedValue = map['clientCredentialsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jwtToken: (() { final guardedValue = map['jwtToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2GrantType: (() { final guardedValue = map['oauth2GrantType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthRequest: (() { final guardedValue = map['oauthRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
