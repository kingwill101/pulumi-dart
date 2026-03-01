// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_properties.dart';

/// {@template pulumi_cloudhealth_entity_args_doc}
/// The set of arguments for Entity.
/// {@endtemplate}
/// {@macro pulumi_cloudhealth_entity_args_doc}
class EntityArgs {
  /// Name of the entity. Must be unique within a health model.
  final pulumi.Input<String>? entityName;
  /// Name of health model resource
  final pulumi.Input<String> healthModelName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EntityProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [EntityArgs].
  /// [entityName] Name of the entity. Must be unique within a health model.
  /// [healthModelName] Name of health model resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  EntityArgs({
    pulumi.Output<String>? entityName,
    required pulumi.Output<String> healthModelName,
    pulumi.Output<EntityProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      entityName = pulumi.Input.asOptionalInput<String>(entityName),
      healthModelName = pulumi.Input.asInput<String>(healthModelName),
      properties = pulumi.Input.asOptionalInput<EntityProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      entityName: map['entityName'] == null ? null : pulumi.Output.create<String>(map['entityName'] as String),
      healthModelName: pulumi.Output.create<String>(map['healthModelName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<EntityProperties>(EntityProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

