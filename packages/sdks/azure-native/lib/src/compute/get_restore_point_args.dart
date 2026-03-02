// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_restore_point_args_doc}
/// Arguments for getRestorePoint.
/// {@endtemplate}
/// {@macro pulumi_compute_get_restore_point_args_doc}
class GetRestorePointArgs {
  /// The expand expression to apply on the operation. 'InstanceView' retrieves information about the run-time state of a restore point.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the restore point collection.
  final pulumi.Input<String> restorePointCollectionName;
  /// The name of the restore point.
  final pulumi.Input<String> restorePointName;

  /// Creates a new [GetRestorePointArgs].
  /// [expand] The expand expression to apply on the operation. 'InstanceView' retrieves information about the run-time state of a restore point.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restorePointCollectionName] The name of the restore point collection.
  /// [restorePointName] The name of the restore point.
  GetRestorePointArgs({
    this.expand,
    required this.resourceGroupName,
    required this.restorePointCollectionName,
    required this.restorePointName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'restorePointCollectionName': restorePointCollectionName,
      'restorePointName': restorePointName,
    };
  }

  factory GetRestorePointArgs.fromMap(Map<String, dynamic> map) {
    return GetRestorePointArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restorePointCollectionName: (map['restorePointCollectionName'] as String).input(),
      restorePointName: (map['restorePointName'] as String).input(),
    );
  }
}

