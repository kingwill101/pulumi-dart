// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_slack_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack {
  final pulumi.Input<String>? accessToken;
  final pulumi.Input<String> clientId;
  final pulumi.Input<String> clientSecret;
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlackOauthRequest>? oauthRequest;

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
      'oauthRequest': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlackOauthRequest, Map<String, dynamic>>(oauthRequest, (value) => value.toMap()),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlack(
      accessToken: map['accessToken'] == null ? null : (map['accessToken'] as String).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      oauthRequest: map['oauthRequest'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSlackOauthRequest.fromMap((map['oauthRequest'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

