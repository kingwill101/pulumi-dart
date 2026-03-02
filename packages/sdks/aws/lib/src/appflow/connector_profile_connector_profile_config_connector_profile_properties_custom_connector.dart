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
      oauth2Properties: map['oauth2Properties'] == null ? null : ((ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties.fromMap((map['oauth2Properties']! as Map).cast<String, dynamic>())).input()).input(),
      profileProperties: map['profileProperties'] == null ? null : (((map['profileProperties'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

