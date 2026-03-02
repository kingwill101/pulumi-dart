// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_honeycode_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode {
  final pulumi.Input<String>? accessToken;
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest>? oauthRequest;
  final pulumi.Input<String>? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode].
  /// [accessToken] Optional.
  /// [oauthRequest] Optional.
  /// [refreshToken] Optional.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode({
    this.accessToken,
    this.oauthRequest,
    this.refreshToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'oauthRequest': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest, Map<String, dynamic>>(oauthRequest, (value) => value.toMap()),
      'refreshToken': ?refreshToken,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode(
      accessToken: map['accessToken'] == null ? null : (map['accessToken'] as String).input(),
      oauthRequest: map['oauthRequest'] == null ? null : (ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest.fromMap((map['oauthRequest'] as Map).cast<String, dynamic>())).input(),
      refreshToken: map['refreshToken'] == null ? null : (map['refreshToken'] as String).input(),
    );
  }
}

