// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_update_args_doc}
/// Arguments for getUpdate.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_update_args_doc}
class GetUpdateArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Update
  final pulumi.Input<String> updateName;

  /// Creates a new [GetUpdateArgs].
  /// [clusterName] The name of the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [updateName] The name of the Update
  const GetUpdateArgs({
    required this.clusterName,
    required this.resourceGroupName,
    required this.updateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'updateName': updateName,
    };
  }

  factory GetUpdateArgs.fromMap(Map<String, dynamic> map) {
    return GetUpdateArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      updateName: pulumi.Input.fromValue(map['updateName'] as String),
    );
  }
}
