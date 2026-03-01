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
    required String connectorName,
    String? connectorType,
    String? description,
    String? displayName,
    required EntityTypes entityType,
    required String entityTypeName,
    required String hubName,
    String? mappingName,
    required ConnectorMappingProperties mappingProperties,
    required String resourceGroupName,
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
      connectorName: map['connectorName'] as String,
      connectorType: map['connectorType'] == null ? null : map['connectorType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      entityType: EntityTypes.fromValue(map['entityType'] as String),
      entityTypeName: map['entityTypeName'] as String,
      hubName: map['hubName'] as String,
      mappingName: map['mappingName'] == null ? null : map['mappingName'] as String,
      mappingProperties: ConnectorMappingProperties.fromMap((map['mappingProperties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

