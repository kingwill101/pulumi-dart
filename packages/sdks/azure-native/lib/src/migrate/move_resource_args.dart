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
    required this.moveCollectionName,
    this.moveResourceName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moveCollectionName': moveCollectionName,
      'moveResourceName': ?moveResourceName,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            MoveResourceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory MoveResourceArgs.fromMap(Map<String, dynamic> map) {
    return MoveResourceArgs(
      moveCollectionName: pulumi.Input.fromValue(
        map['moveCollectionName'] as String,
      ),
      moveResourceName: (() {
        final guardedValue = map['moveResourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MoveResourceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
