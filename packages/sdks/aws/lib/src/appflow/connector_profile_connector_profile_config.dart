// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_profile_connector_profile_config_connector_profile_credentials.dart';
import 'connector_profile_connector_profile_config_connector_profile_properties.dart';

class ConnectorProfileConnectorProfileConfig {
  /// The connector-specific credentials required by each connector. See Connector Profile Credentials for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileCredentials> connectorProfileCredentials;
  /// The connector-specific properties of the profile configuration. See Connector Profile Properties for more details.
  final pulumi.Input<ConnectorProfileConnectorProfileConfigConnectorProfileProperties> connectorProfileProperties;

  /// Creates a new [ConnectorProfileConnectorProfileConfig].
  /// [connectorProfileCredentials] The connector-specific credentials required by each connector. See Connector Profile Credentials for more details.
  /// [connectorProfileProperties] The connector-specific properties of the profile configuration. See Connector Profile Properties for more details.
  const ConnectorProfileConnectorProfileConfig({
    required this.connectorProfileCredentials,
    required this.connectorProfileProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorProfileCredentials': pulumi.Input.mapInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileCredentials, Map<String, dynamic>>(connectorProfileCredentials, (value) => value.toMap()),
      'connectorProfileProperties': pulumi.Input.mapInputValue<ConnectorProfileConnectorProfileConfigConnectorProfileProperties, Map<String, dynamic>>(connectorProfileProperties, (value) => value.toMap()),
    };
  }

  factory ConnectorProfileConnectorProfileConfig.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfig(
      connectorProfileCredentials: pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileCredentials.fromMap((map['connectorProfileCredentials']! as Map).cast<String, dynamic>())),
      connectorProfileProperties: pulumi.Input.fromValue(ConnectorProfileConnectorProfileConfigConnectorProfileProperties.fromMap((map['connectorProfileProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

