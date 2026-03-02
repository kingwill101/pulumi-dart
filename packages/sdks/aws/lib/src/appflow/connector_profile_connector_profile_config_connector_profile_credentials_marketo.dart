// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_marketo_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo {
  final pulumi.Input<String>? accessToken;
  final pulumi.Input<String> clientId;
  final pulumi.Input<String> clientSecret;
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest>? oauthRequest;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo].
  /// [accessToken] Optional.
  /// [clientId] Required.
  /// [clientSecret] Required.
  /// [oauthRequest] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo({
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
      'oauthRequest': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest, Map<String, dynamic>>(oauthRequest, (value) => value.toMap()),
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketo(
      accessToken: map['accessToken'] == null ? null : ((map['accessToken'] as String).input()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      oauthRequest: map['oauthRequest'] == null ? null : ((ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsMarketoOauthRequest.fromMap((map['oauthRequest']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

