// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_salesforce_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce {
  final pulumi.Input<String>? accessToken;
  /// The secret manager ARN, which contains the client ID and client secret of the connected app.
  final pulumi.Input<String>? clientCredentialsArn;
  /// A JSON web token (JWT) that authorizes access to Salesforce records.
  final pulumi.Input<String>? jwtToken;
  final pulumi.Input<String>? oauth2GrantType;
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest>? oauthRequest;
  final pulumi.Input<String>? refreshToken;

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
      'oauthRequest': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest, Map<String, dynamic>>(oauthRequest, (value) => value.toMap()),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce(
      accessToken: map['accessToken'] == null ? null : ((map['accessToken'] as String).input()).input(),
      clientCredentialsArn: map['clientCredentialsArn'] == null ? null : ((map['clientCredentialsArn'] as String).input()).input(),
      jwtToken: map['jwtToken'] == null ? null : ((map['jwtToken'] as String).input()).input(),
      oauth2GrantType: map['oauth2GrantType'] == null ? null : ((map['oauth2GrantType'] as String).input()).input(),
      oauthRequest: map['oauthRequest'] == null ? null : ((ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest.fromMap((map['oauthRequest']! as Map).cast<String, dynamic>())).input()).input(),
      refreshToken: map['refreshToken'] == null ? null : ((map['refreshToken'] as String).input()).input(),
    );
  }
}

