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
  GetUpdateRunArgs({
    required String clusterName,
    required String resourceGroupName,
    required String updateName,
    required String updateRunName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      updateName = pulumi.Input.asInput<String>(updateName),
      updateRunName = pulumi.Input.asInput<String>(updateRunName);

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
      clusterName: map['clusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      updateName: map['updateName'] as String,
      updateRunName: map['updateRunName'] as String,
    );
  }
}

