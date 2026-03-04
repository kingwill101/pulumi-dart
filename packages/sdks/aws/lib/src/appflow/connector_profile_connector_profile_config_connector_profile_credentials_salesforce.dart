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
  final pulumi.Input<
    ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest
  >?
  oauthRequest;
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
      'oauthRequest':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest,
            Map<String, dynamic>
          >(oauthRequest, (value) => value.toMap()),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforce(
      accessToken: (() {
        final guardedValue = map['accessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCredentialsArn: (() {
        final guardedValue = map['clientCredentialsArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jwtToken: (() {
        final guardedValue = map['jwtToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauth2GrantType: (() {
        final guardedValue = map['oauth2GrantType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauthRequest: (() {
        final guardedValue = map['oauthRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSalesforceOauthRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      refreshToken: (() {
        final guardedValue = map['refreshToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
