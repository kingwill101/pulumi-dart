// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_move_collection_args_doc}
/// Arguments for getMoveCollection.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_move_collection_args_doc}
class GetMoveCollectionArgs {
  /// The Move Collection Name.
  final pulumi.Input<String> moveCollectionName;

  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMoveCollectionArgs].
  /// [moveCollectionName] The Move Collection Name.
  /// [resourceGroupName] The Resource Group Name.
  GetMoveCollectionArgs({
    required this.moveCollectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moveCollectionName': moveCollectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMoveCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetMoveCollectionArgs(
      moveCollectionName: pulumi.Input.fromValue(
        map['moveCollectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
