// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Agent Connector Properties
class AgentConnectorProperties {
  /// The type of the data connector
  final pulumi.Input<String?>? dataConnectorType;
  /// Data source connection string or endpoint
  final pulumi.Input<String?>? dataSource;
  /// Endpoint of the connector
  final pulumi.Input<String?>? endpoint;
  /// Additional properties for the data connector which can be used to store custom key-value pairs
  final pulumi.Input<dynamic>? extendedProperties;
  /// Identity used to access the data source
  final pulumi.Input<String?>? identity;

  /// Creates a new [AgentConnectorProperties].
  /// [dataConnectorType] The type of the data connector
  /// [dataSource] Data source connection string or endpoint
  /// [endpoint] Endpoint of the connector
  /// [extendedProperties] Additional properties for the data connector which can be used to store custom key-value pairs
  /// [identity] Identity used to access the data source
  const AgentConnectorProperties({
    this.dataConnectorType,
    this.dataSource,
    this.endpoint,
    this.extendedProperties,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectorType': ?dataConnectorType,
      'dataSource': ?dataSource,
      'endpoint': ?endpoint,
      'extendedProperties': ?extendedProperties,
      'identity': ?identity,
    };
  }

  factory AgentConnectorProperties.fromMap(Map<String, dynamic> map) {
    return AgentConnectorProperties(
      dataConnectorType: (() { final guardedValue = map['dataConnectorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedProperties: (() { final guardedValue = map['extendedProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
