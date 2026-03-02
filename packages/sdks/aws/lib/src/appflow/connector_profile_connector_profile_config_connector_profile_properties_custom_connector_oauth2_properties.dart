// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties {
  final pulumi.Input<String> oauth2GrantType;
  final pulumi.Input<String> tokenUrl;
  /// Associates your token URL with a map of properties that you define. Use this parameter to provide any additional details that the connector requires to authenticate your request.
  final pulumi.Input<Map<String, String>>? tokenUrlCustomProperties;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties].
  /// [oauth2GrantType] Required.
  /// [tokenUrl] Required.
  /// [tokenUrlCustomProperties] Associates your token URL with a map of properties that you define. Use this parameter to provide any additional details that the connector requires to authenticate your request.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties({
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
      oauth2GrantType: (map['oauth2GrantType'] as String).input(),
      tokenUrl: (map['tokenUrl'] as String).input(),
      tokenUrlCustomProperties: map['tokenUrlCustomProperties'] == null ? null : ((map['tokenUrlCustomProperties'] as Map).cast<String, String>()).input(),
    );
  }
}

