// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_zendesk_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk {
  final pulumi.Input<String>? accessToken;
  final pulumi.Input<String> clientId;
  final pulumi.Input<String> clientSecret;
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest>? oauthRequest;

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
      'oauthRequest': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest, Map<String, dynamic>>(oauthRequest, (value) => value.toMap()),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendesk(
      accessToken: map['accessToken'] == null ? null : ((map['accessToken'] as String).input()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      oauthRequest: map['oauthRequest'] == null ? null : ((ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsZendeskOauthRequest.fromMap((map['oauthRequest']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

