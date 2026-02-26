// ignore_for_file: unused_element, unnecessary_cast

import '../connector_profile_connector_profile_config_connector_profile_credentials_salesforce_oauth_request/connector_profile_connector_profile_config_connector_profile_credentials_salesforce_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce {
  final String? accessToken;

  /// The secret manager ARN, which contains the client ID and client secret of the connected app.
  final String? clientCredentialsArn;

  /// A JSON web token (JWT) that authorizes access to Salesforce records.
  final String? jwtToken;
  final String? oauth2GrantType;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest?
      oauthRequest;
  final String? refreshToken;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce({
    this.accessToken,
    this.clientCredentialsArn,
    this.jwtToken,
    this.oauth2GrantType,
    this.oauthRequest,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValue = accessToken;
    if (accessTokenValue != null) {
      map['accessToken'] = accessTokenValue;
    }
    final clientCredentialsArnValue = clientCredentialsArn;
    if (clientCredentialsArnValue != null) {
      map['clientCredentialsArn'] = clientCredentialsArnValue;
    }
    final jwtTokenValue = jwtToken;
    if (jwtTokenValue != null) {
      map['jwtToken'] = jwtTokenValue;
    }
    final oauth2GrantTypeValue = oauth2GrantType;
    if (oauth2GrantTypeValue != null) {
      map['oauth2GrantType'] = oauth2GrantTypeValue;
    }
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

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce(
      accessToken:
          map['accessToken'] == null ? null : map['accessToken'] as String,
      clientCredentialsArn: map['clientCredentialsArn'] == null
          ? null
          : map['clientCredentialsArn'] as String,
      jwtToken: map['jwtToken'] == null ? null : map['jwtToken'] as String,
      oauth2GrantType: map['oauth2GrantType'] == null
          ? null
          : map['oauth2GrantType'] as String,
      oauthRequest: map['oauthRequest'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest
              .fromMap((map['oauthRequest'] as Map).cast<String, dynamic>()),
      refreshToken:
          map['refreshToken'] == null ? null : map['refreshToken'] as String,
    );
  }
}
