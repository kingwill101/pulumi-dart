// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_cache_node_auto_update_history_args_doc}
/// Arguments for getEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistory.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_cache_node_auto_update_history_args_doc}
class GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String> cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryArgs({
    required this.cacheNodeResourceName,
    required this.customerResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheNodeResourceName': cacheNodeResourceName,
      'customerResourceName': customerResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseMccCacheNodesOperationCacheNodeAutoUpdateHistoryArgs(
      cacheNodeResourceName: pulumi.Input.fromValue(map['cacheNodeResourceName'] as String),
      customerResourceName: pulumi.Input.fromValue(map['customerResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
