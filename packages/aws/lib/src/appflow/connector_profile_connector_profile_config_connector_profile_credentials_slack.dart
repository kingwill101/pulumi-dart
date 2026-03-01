// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials_slack_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack {
  final String? accessToken;
  final String clientId;
  final String clientSecret;
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlackOauthRequest?
  oauthRequest;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack].
  /// [accessToken] Optional.
  /// [clientId] Required.
  /// [clientSecret] Required.
  /// [oauthRequest] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack({
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

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack(
      accessToken: map['accessToken'] == null
          ? null
          : map['accessToken'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      oauthRequest: map['oauthRequest'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlackOauthRequest.fromMap(
              (map['oauthRequest'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
