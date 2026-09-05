// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties {
  /// OAuth 2.0 grant type used by the connector for OAuth 2.0 authentication. One of: `AUTHORIZATION_CODE`, `CLIENT_CREDENTIALS`.
  final pulumi.Input<String> oauth2GrantType;
  /// Token URL required to fetch access and refresh tokens using the authorization code, and to refresh an expired access token using the refresh token.
  final pulumi.Input<String> tokenUrl;
  /// Map of properties associated with your token URL. Use this parameter to provide any additional details that the connector requires to authenticate your request.
  final pulumi.Input<Map<String, String>?>? tokenUrlCustomProperties;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties].
  /// [oauth2GrantType] OAuth 2.0 grant type used by the connector for OAuth 2.0 authentication. One of: `AUTHORIZATION_CODE`, `CLIENT_CREDENTIALS`.
  /// [tokenUrl] Token URL required to fetch access and refresh tokens using the authorization code, and to refresh an expired access token using the refresh token.
  /// [tokenUrlCustomProperties] Map of properties associated with your token URL. Use this parameter to provide any additional details that the connector requires to authenticate your request.
  const ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties({
    required this.oauth2GrantType,
    required this.tokenUrl,
    this.tokenUrlCustomProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauth2GrantType': oauth2GrantType,
      'tokenUrl': tokenUrl,
      'tokenUrlCustomProperties': ?tokenUrlCustomProperties,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties(
      oauth2GrantType: pulumi.Input.fromValue(map['oauth2GrantType'] as String),
      tokenUrl: pulumi.Input.fromValue(map['tokenUrl'] as String),
      tokenUrlCustomProperties: (() { final guardedValue = map['tokenUrlCustomProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
