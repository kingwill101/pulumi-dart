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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> restorePointCollectionName,
    required pulumi.Output<String> restorePointName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restorePointCollectionName = pulumi.Input.asInput<String>(restorePointCollectionName),
      restorePointName = pulumi.Input.asInput<String>(restorePointName);

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
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restorePointCollectionName: pulumi.Output.create<String>(map['restorePointCollectionName'] as String),
      restorePointName: pulumi.Output.create<String>(map['restorePointName'] as String),
    );
  }
}

