// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_salesforce_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce {
  final String? accessToken;
  /// The secret manager ARN, which contains the client ID and client secret of the connected app.
  final String? clientCredentialsArn;
  /// A JSON web token (JWT) that authorizes access to Salesforce records.
  final String? jwtToken;
  final String? oauth2GrantType;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest? oauthRequest;
  final String? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce].
  /// [accessToken] Optional.
  /// [clientCredentialsArn] The secret manager ARN, which contains the client ID and client secret of the connected app.
  /// [jwtToken] A JSON web token (JWT) that authorizes access to Salesforce records.
  /// [oauth2GrantType] Optional.
  /// [oauthRequest] Optional.
  /// [refreshToken] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce({
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
      'oauthRequest': ?oauthRequest == null ? null : oauthRequest!.toMap(),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      clientCredentialsArn: map['clientCredentialsArn'] == null ? null : map['clientCredentialsArn'] as String,
      jwtToken: map['jwtToken'] == null ? null : map['jwtToken'] as String,
      oauth2GrantType: map['oauth2GrantType'] == null ? null : map['oauth2GrantType'] as String,
      oauthRequest: map['oauthRequest'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest.fromMap((map['oauthRequest'] as Map).cast<String, dynamic>()),
      refreshToken: map['refreshToken'] == null ? null : map['refreshToken'] as String,
    );
  }
}

