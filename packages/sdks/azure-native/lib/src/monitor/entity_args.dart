// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_properties.dart';

/// {@template pulumi_monitor_entity_args_doc}
/// The set of arguments for Entity.
/// {@endtemplate}
/// {@macro pulumi_monitor_entity_args_doc}
class EntityArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// Name of the entity. Must be unique within a health model.
  final pulumi.Input<String>? entityName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EntityProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [EntityArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [entityName] Name of the entity. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  EntityArgs({
    required this.azureMonitorWorkspaceName,
    this.entityName,
    required this.healthModelName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'entityName': ?entityName,
      'healthModelName': healthModelName,
      'properties': ?pulumi.Input.mapOptionalInputValue<EntityProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory EntityArgs.fromMap(Map<String, dynamic> map) {
    return EntityArgs(
      azureMonitorWorkspaceName: (map['azureMonitorWorkspaceName'] as String).input(),
      entityName: map['entityName'] == null ? null : (map['entityName']! as String).input(),
      healthModelName: (map['healthModelName'] as String).input(),
      properties: map['properties'] == null ? null : (EntityProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

