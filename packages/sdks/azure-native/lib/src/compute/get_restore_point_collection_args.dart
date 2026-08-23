// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_restore_point_collection_args_doc}
/// Arguments for getRestorePointCollection.
/// {@endtemplate}
/// {@macro pulumi_compute_get_restore_point_collection_args_doc}
class GetRestorePointCollectionArgs {
  /// The expand expression to apply on the operation. If expand=restorePoints, server will return all contained restore points in the restorePointCollection.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the restore point collection.
  final pulumi.Input<String> restorePointCollectionName;

  /// Creates a new [GetRestorePointCollectionArgs].
  /// [expand] The expand expression to apply on the operation. If expand=restorePoints, server will return all contained restore points in the restorePointCollection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restorePointCollectionName] The name of the restore point collection.
  const GetRestorePointCollectionArgs({
    this.expand,
    required this.resourceGroupName,
    required this.restorePointCollectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'restorePointCollectionName': restorePointCollectionName,
    };
  }

  factory GetRestorePointCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetRestorePointCollectionArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restorePointCollectionName: pulumi.Input.fromValue(map['restorePointCollectionName'] as String),
    );
  }
}
