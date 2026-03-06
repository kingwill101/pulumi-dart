// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_mapping_properties.dart';
import 'entity_types.dart';

/// {@template pulumi_customerinsights_connector_mapping_args_doc}
/// The set of arguments for ConnectorMapping.
/// {@endtemplate}
/// {@macro pulumi_customerinsights_connector_mapping_args_doc}
class ConnectorMappingArgs {
  /// The name of the connector.
  final pulumi.Input<String> connectorName;
  /// Type of connector.
  final pulumi.Input<String>? connectorType;
  /// The description of the connector mapping.
  final pulumi.Input<String>? description;
  /// Display name for the connector mapping.
  final pulumi.Input<String>? displayName;
  /// Defines which entity type the file should map to.
  final pulumi.Input<EntityTypes> entityType;
  /// The mapping entity name.
  final pulumi.Input<String> entityTypeName;
  /// The name of the hub.
  final pulumi.Input<String> hubName;
  /// The name of the connector mapping.
  final pulumi.Input<String>? mappingName;
  /// The properties of the mapping.
  final pulumi.Input<ConnectorMappingProperties> mappingProperties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectorMappingArgs].
  /// [connectorName] The name of the connector.
  /// [connectorType] Type of connector.
  /// [description] The description of the connector mapping.
  /// [displayName] Display name for the connector mapping.
  /// [entityType] Defines which entity type the file should map to.
  /// [entityTypeName] The mapping entity name.
  /// [hubName] The name of the hub.
  /// [mappingName] The name of the connector mapping.
  /// [mappingProperties] The properties of the mapping.
  /// [resourceGroupName] The name of the resource group.
  const ConnectorMappingArgs({
    required this.connectorName,
    this.connectorType,
    this.description,
    this.displayName,
    required this.entityType,
    required this.entityTypeName,
    required this.hubName,
    this.mappingName,
    required this.mappingProperties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'connectorType': ?connectorType,
      'description': ?description,
      'displayName': ?displayName,
      'entityType': pulumi.Input.mapInputValue<EntityTypes, String>(entityType, (value) => value.wireValue),
      'entityTypeName': entityTypeName,
      'hubName': hubName,
      'mappingName': ?mappingName,
      'mappingProperties': pulumi.Input.mapInputValue<ConnectorMappingProperties, Map<String, dynamic>>(mappingProperties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectorMappingArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingArgs(
      connectorName: pulumi.Input.fromValue(map['connectorName'] as String),
      connectorType: (() { final guardedValue = map['connectorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityType: pulumi.Input.fromValue(EntityTypes.fromValue(map['entityType']! as String)),
      entityTypeName: pulumi.Input.fromValue(map['entityTypeName'] as String),
      hubName: pulumi.Input.fromValue(map['hubName'] as String),
      mappingName: (() { final guardedValue = map['mappingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mappingProperties: pulumi.Input.fromValue(ConnectorMappingProperties.fromMap((map['mappingProperties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

