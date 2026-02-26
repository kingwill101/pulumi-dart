// ignore_for_file: unused_element, unnecessary_cast

import '../connector_profile_connector_profile_config_connector_profile_properties_custom_connector_oauth2_properties/connector_profile_connector_profile_config_connector_profile_properties_custom_connector_oauth2_properties.dart';

class ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector {
  /// The OAuth 2.0 properties required for OAuth 2.0 authentication.
  final ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties?
      oauth2Properties;

  /// A map of properties that are required to create a profile for the custom connector.
  final Map<String, String>? profileProperties;

  ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector({
    this.oauth2Properties,
    this.profileProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oauth2PropertiesValue = oauth2Properties;
    if (oauth2PropertiesValue != null) {
      map['oauth2Properties'] = oauth2PropertiesValue.toMap();
    }
    final profilePropertiesValue = profileProperties;
    if (profilePropertiesValue != null) {
      map['profileProperties'] = profilePropertiesValue;
    }
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnector(
      oauth2Properties: map['oauth2Properties'] == null
          ? null
          : ConnectorProfileConnectorProfileConfigConnectorProfilePropertiesCustomConnectorOauth2Properties
              .fromMap(
                  (map['oauth2Properties'] as Map).cast<String, dynamic>()),
      profileProperties: map['profileProperties'] == null
          ? null
          : (map['profileProperties'] as Map).cast<String, String>(),
    );
  }
}
