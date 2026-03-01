// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_managed_cluster_snapshot_args_doc}
/// Arguments for getManagedClusterSnapshot.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_managed_cluster_snapshot_args_doc}
class GetManagedClusterSnapshotArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the managed cluster resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetManagedClusterSnapshotArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the managed cluster resource.
  GetManagedClusterSnapshotArgs({
    required String resourceGroupName,
    required String resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetManagedClusterSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterSnapshotArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

