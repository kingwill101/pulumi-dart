// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials_honeycode_oauth_request.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode {
  /// Credentials used to access protected Zendesk resources.
  final pulumi.Input<String?>? accessToken;
  /// OAuth requirement needed to request security tokens from the connector endpoint. See `connector_profile_config.connector_profile_credentials.zendesk.oauth_request` Block for details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest?>? oauthRequest;
  /// Refresh token used to refresh an expired access token.
  final pulumi.Input<String?>? refreshToken;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode].
  /// [accessToken] Credentials used to access protected Zendesk resources.
  /// [oauthRequest] OAuth requirement needed to request security tokens from the connector endpoint. See `connector_profile_config.connector_profile_credentials.zendesk.oauth_request` Block for details.
  /// [refreshToken] Refresh token used to refresh an expired access token.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycode({
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
      accessToken: (() { final guardedValue = map['accessToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthRequest: (() { final guardedValue = map['oauthRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsHoneycodeOauthRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshToken: (() { final guardedValue = map['refreshToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
