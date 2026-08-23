// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent Space Connector Properties
class AgentSpaceConnectorPropertiesResponse {
  /// The type of the data connector
  final pulumi.Input<String>? dataConnectorType;
  /// Data source connection string or endpoint
  final pulumi.Input<String>? dataSource;
  /// Deployment error message if provisioning failed
  final pulumi.Input<String> deploymentError;
  /// Endpoint of the connector
  final pulumi.Input<String>? endpoint;
  /// Additional properties for the data connector which can be used to store custom key-value pairs
  final pulumi.Input<dynamic>? extendedProperties;
  /// Identity used to access the data source
  final pulumi.Input<String>? identity;
  /// Provisioning state of the connector
  final pulumi.Input<String> provisioningState;

  /// Creates a new [AgentSpaceConnectorPropertiesResponse].
  /// [dataConnectorType] The type of the data connector
  /// [dataSource] Data source connection string or endpoint
  /// [deploymentError] Deployment error message if provisioning failed
  /// [endpoint] Endpoint of the connector
  /// [extendedProperties] Additional properties for the data connector which can be used to store custom key-value pairs
  /// [identity] Identity used to access the data source
  /// [provisioningState] Provisioning state of the connector
  const AgentSpaceConnectorPropertiesResponse({
    this.dataConnectorType,
    this.dataSource,
    required this.deploymentError,
    this.endpoint,
    this.extendedProperties,
    this.identity,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorType': ?dataConnectorType,
      'dataSource': ?dataSource,
      'deploymentError': deploymentError,
      'endpoint': ?endpoint,
      'extendedProperties': ?extendedProperties,
      'identity': ?identity,
      'provisioningState': provisioningState,
    };
  }

  factory AgentSpaceConnectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AgentSpaceConnectorPropertiesResponse(
      dataConnectorType: (() { final guardedValue = map['dataConnectorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentError: pulumi.Input.fromValue(map['deploymentError'] as String),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedProperties: (() { final guardedValue = map['extendedProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
