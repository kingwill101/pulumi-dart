// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_auto_update_history_args_doc}
/// Arguments for getIspCacheNodesOperationCacheNodeAutoUpdateHistory.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_auto_update_history_args_doc}
class GetIspCacheNodesOperationCacheNodeAutoUpdateHistoryArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String> cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIspCacheNodesOperationCacheNodeAutoUpdateHistoryArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIspCacheNodesOperationCacheNodeAutoUpdateHistoryArgs({
    required pulumi.Output<String> cacheNodeResourceName,
    required pulumi.Output<String> customerResourceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      cacheNodeResourceName = pulumi.Input.asInput<String>(cacheNodeResourceName),
      customerResourceName = pulumi.Input.asInput<String>(customerResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeResourceName': cacheNodeResourceName,
      'customerResourceName': customerResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIspCacheNodesOperationCacheNodeAutoUpdateHistoryArgs.fromMap(Map<String, dynamic> map) {
    return GetIspCacheNodesOperationCacheNodeAutoUpdateHistoryArgs(
      cacheNodeResourceName: pulumi.Output.create<String>(map['cacheNodeResourceName'] as String),
      customerResourceName: pulumi.Output.create<String>(map['customerResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

