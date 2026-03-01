// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'move_resource_properties.dart';

/// {@template pulumi_migrate_move_resource_args_doc}
/// The set of arguments for MoveResource.
/// {@endtemplate}
/// {@macro pulumi_migrate_move_resource_args_doc}
class MoveResourceArgs {
  /// The Move Collection Name.
  final pulumi.Input<String> moveCollectionName;
  /// The Move Resource Name.
  final pulumi.Input<String>? moveResourceName;
  /// Defines the move resource properties.
  final pulumi.Input<MoveResourceProperties>? properties;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [MoveResourceArgs].
  /// [moveCollectionName] The Move Collection Name.
  /// [moveResourceName] The Move Resource Name.
  /// [properties] Defines the move resource properties.
  /// [resourceGroupName] The Resource Group Name.
  MoveResourceArgs({
    required pulumi.Output<String> moveCollectionName,
    pulumi.Output<String>? moveResourceName,
    pulumi.Output<MoveResourceProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      moveCollectionName = pulumi.Input.asInput<String>(moveCollectionName),
      moveResourceName = pulumi.Input.asOptionalInput<String>(moveResourceName),
      properties = pulumi.Input.asOptionalInput<MoveResourceProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moveCollectionName': moveCollectionName,
      'moveResourceName': ?moveResourceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MoveResourceProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MoveResourceArgs.fromMap(Map<String, dynamic> map) {
    return MoveResourceArgs(
      moveCollectionName: pulumi.Output.create<String>(map['moveCollectionName'] as String),
      moveResourceName: map['moveResourceName'] == null ? null : pulumi.Output.create<String>(map['moveResourceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<MoveResourceProperties>(MoveResourceProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

