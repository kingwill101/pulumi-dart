// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_update_run_args_doc}
/// Arguments for getUpdateRun.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_update_run_args_doc}
class GetUpdateRunArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Update
  final pulumi.Input<String> updateName;
  /// The name of the Update Run
  final pulumi.Input<String> updateRunName;

  /// Creates a new [GetUpdateRunArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [updateName] The name of the Update
  /// [updateRunName] The name of the Update Run
  const GetUpdateRunArgs({
    required this.clusterName,
    required this.resourceGroupName,
    required this.updateName,
    required this.updateRunName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'updateName': updateName,
      'updateRunName': updateRunName,
    };
  }

  factory GetUpdateRunArgs.fromMap(Map<String, dynamic> map) {
    return GetUpdateRunArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      updateName: pulumi.Input.fromValue(map['updateName'] as String),
      updateRunName: pulumi.Input.fromValue(map['updateRunName'] as String),
    );
  }
}

