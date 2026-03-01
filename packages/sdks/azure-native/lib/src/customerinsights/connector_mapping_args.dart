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
  ConnectorMappingArgs({
    required pulumi.Output<String> connectorName,
    pulumi.Output<String>? connectorType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<EntityTypes> entityType,
    required pulumi.Output<String> entityTypeName,
    required pulumi.Output<String> hubName,
    pulumi.Output<String>? mappingName,
    required pulumi.Output<ConnectorMappingProperties> mappingProperties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectorName = pulumi.Input.asInput<String>(connectorName),
      connectorType = pulumi.Input.asOptionalInput<String>(connectorType),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      entityType = pulumi.Input.asInput<EntityTypes>(entityType),
      entityTypeName = pulumi.Input.asInput<String>(entityTypeName),
      hubName = pulumi.Input.asInput<String>(hubName),
      mappingName = pulumi.Input.asOptionalInput<String>(mappingName),
      mappingProperties = pulumi.Input.asInput<ConnectorMappingProperties>(mappingProperties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorName': connectorName,
      'connectorType': ?connectorType,
      'description': ?description,
      'displayName': ?displayName,
      'entityType': pulumi.Input.mapInputValue<EntityTypes, String>(entityType, (value) => value.value),
      'entityTypeName': entityTypeName,
      'hubName': hubName,
      'mappingName': ?mappingName,
      'mappingProperties': pulumi.Input.mapInputValue<ConnectorMappingProperties, Map<String, dynamic>>(mappingProperties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectorMappingArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorMappingArgs(
      connectorName: pulumi.Output.create<String>(map['connectorName'] as String),
      connectorType: map['connectorType'] == null ? null : pulumi.Output.create<String>(map['connectorType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      entityType: pulumi.Output.create<EntityTypes>(EntityTypes.fromValue(map['entityType'] as String)),
      entityTypeName: pulumi.Output.create<String>(map['entityTypeName'] as String),
      hubName: pulumi.Output.create<String>(map['hubName'] as String),
      mappingName: map['mappingName'] == null ? null : pulumi.Output.create<String>(map['mappingName'] as String),
      mappingProperties: pulumi.Output.create<ConnectorMappingProperties>(ConnectorMappingProperties.fromMap((map['mappingProperties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

