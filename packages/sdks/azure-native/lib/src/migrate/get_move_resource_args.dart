// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_move_resource_args_doc}
/// Arguments for getMoveResource.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_move_resource_args_doc}
class GetMoveResourceArgs {
  /// The Move Collection Name.
  final pulumi.Input<String> moveCollectionName;
  /// The Move Resource Name.
  final pulumi.Input<String> moveResourceName;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMoveResourceArgs].
  /// [moveCollectionName] The Move Collection Name.
  /// [moveResourceName] The Move Resource Name.
  /// [resourceGroupName] The Resource Group Name.
  GetMoveResourceArgs({
    required pulumi.Output<String> moveCollectionName,
    required pulumi.Output<String> moveResourceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      moveCollectionName = pulumi.Input.asInput<String>(moveCollectionName),
      moveResourceName = pulumi.Input.asInput<String>(moveResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moveCollectionName': moveCollectionName,
      'moveResourceName': moveResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMoveResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetMoveResourceArgs(
      moveCollectionName: pulumi.Output.create<String>(map['moveCollectionName'] as String),
      moveResourceName: pulumi.Output.create<String>(map['moveResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

