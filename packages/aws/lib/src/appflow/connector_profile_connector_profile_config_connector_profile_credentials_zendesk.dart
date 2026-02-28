// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_zendesk_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk {
  final String? accessToken;
  final String clientId;
  final String clientSecret;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest? oauthRequest;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk].
  /// [accessToken] Optional.
  /// [clientId] Required.
  /// [clientSecret] Required.
  /// [oauthRequest] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk({
    this.accessToken,
    required this.clientId,
    required this.clientSecret,
    this.oauthRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'oauthRequest': ?oauthRequest == null ? null : oauthRequest!.toMap(),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk(
      accessToken: map['accessToken'] == null ? null : map['accessToken'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      oauthRequest: map['oauthRequest'] == null ? null : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest.fromMap((map['oauthRequest'] as Map).cast<String, dynamic>()),
    );
  }
}

