// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_properties.dart';

/// {@template pulumi_cloudhealth_entity_args_doc}
/// The set of arguments for Entity.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_entity_args_doc}
class EntityArgs {
  /// Name of the entity. Must be unique within a health model.
  final pulumi.Input<String?>? entityName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EntityProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [EntityArgs].
  /// [entityName] Name of the entity. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const EntityArgs({
    this.entityName,
    required this.healthModelName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityName': ?entityName,
      'healthModelName': healthModelName,
      'properties': ?pulumi.Input.mapOptionalInputValue<EntityProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory EntityArgs.fromMap(Map<String, dynamic> map) {
    return EntityArgs(
      entityName: (() { final guardedValue = map['entityName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthModelName: pulumi.Input.fromValue(map['healthModelName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
