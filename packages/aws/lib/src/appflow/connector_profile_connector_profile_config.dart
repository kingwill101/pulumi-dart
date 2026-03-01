// ignore_for_file: unused_element, unnecessary_cast

import 'connector_profile_connector_profile_config_connector_profile_credentials.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties.dart';

class ConnectorProfileConnectorProfileConfig {
  /// The connector-specific credentials required by each connector. See Connector Profile Credentials for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileCredentials
  connectorProfileCredentials;

  /// The connector-specific properties of the profile configuration. See Connector Profile Properties for more details.
  final ConnectorProfileConnectorProfileConfigConnectorProfileProperties
  connectorProfileProperties;

  /// Creates a new [ConnectorProfileConnectorProfileConfig].
  /// [connectorProfileCredentials] The connector-specific credentials required by each connector. See Connector Profile Credentials for more details.
  /// [connectorProfileProperties] The connector-specific properties of the profile configuration. See Connector Profile Properties for more details.
  ConnectorProfileConnectorProfileConfig({
    required this.connectorProfileCredentials,
    required this.connectorProfileProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorProfileCredentials': connectorProfileCredentials.toMap(),
      'connectorProfileProperties': connectorProfileProperties.toMap(),
    };
  }

  factory ConnectorProfileConnectorProfileConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfig(
      connectorProfileCredentials:
          ConnectorProfileConnectorProfileConfigConnectorProfileCredentials.fromMap(
            (map['connectorProfileCredentials'] as Map).cast<String, dynamic>(),
          ),
      connectorProfileProperties:
          ConnectorProfileConnectorProfileConfigConnectorProfileProperties.fromMap(
            (map['connectorProfileProperties'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
