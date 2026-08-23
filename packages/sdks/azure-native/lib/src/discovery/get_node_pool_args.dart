// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discovery_get_node_pool_args_doc}
/// Arguments for getNodePool.
/// {@endtemplate}
/// {@macro pulumi_discovery_get_node_pool_args_doc}
class GetNodePoolArgs {
  /// The name of the NodePool
  final pulumi.Input<String> nodePoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Supercomputer
  final pulumi.Input<String> supercomputerName;

  /// Creates a new [GetNodePoolArgs].
  /// [nodePoolName] The name of the NodePool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supercomputerName] The name of the Supercomputer
  const GetNodePoolArgs({
    required this.nodePoolName,
    required this.resourceGroupName,
    required this.supercomputerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolName': nodePoolName,
      'resourceGroupName': resourceGroupName,
      'supercomputerName': supercomputerName,
    };
  }

  factory GetNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetNodePoolArgs(
      nodePoolName: pulumi.Input.fromValue(map['nodePoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      supercomputerName: pulumi.Input.fromValue(map['supercomputerName'] as String),
    );
  }
}
