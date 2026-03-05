// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_properties_custom_connector_oauth2_properties.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector {
  /// The OAuth 2.0 properties required for OAuth 2.0 authentication.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties>? oauth2Properties;
  /// A map of properties that are required to create a profile for the custom connector.
  final pulumi.Input<Map<String, String>>? profileProperties;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector].
  /// [oauth2Properties] The OAuth 2.0 properties required for OAuth 2.0 authentication.
  /// [profileProperties] A map of properties that are required to create a profile for the custom connector.
  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector({
    this.oauth2Properties,
    this.profileProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauth2Properties': ?pulumi.Input.mapOptionalInputValue<ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties, Map<String, dynamic>>(oauth2Properties, (value) => value.toMap()),
      'profileProperties': ?profileProperties,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector(
      oauth2Properties: (() { final guardedValue = map['oauth2Properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      profileProperties: (() { final guardedValue = map['profileProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

