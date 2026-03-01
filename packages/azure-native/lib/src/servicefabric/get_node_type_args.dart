// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_node_type_args_doc}
/// Arguments for getNodeType.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_node_type_args_doc}
class GetNodeTypeArgs {
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the node type.
  final pulumi.Input<String> nodeTypeName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNodeTypeArgs].
  /// [clusterName] The name of the cluster resource.
  /// [nodeTypeName] The name of the node type.
  /// [resourceGroupName] The name of the resource group.
  GetNodeTypeArgs({
    required String clusterName,
    required String nodeTypeName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      nodeTypeName = pulumi.Input.asInput<String>(nodeTypeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'nodeTypeName': nodeTypeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNodeTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeTypeArgs(
      clusterName: map['clusterName'] as String,
      nodeTypeName: map['nodeTypeName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

