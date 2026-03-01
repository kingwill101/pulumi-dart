// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_mcc_issue_details_history_args_doc}
/// Arguments for getIspCacheNodesOperationCacheNodeMccIssueDetailsHistory.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_mcc_issue_details_history_args_doc}
class GetIspCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String> cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIspCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIspCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs({
    required String cacheNodeResourceName,
    required String customerResourceName,
    required String resourceGroupName,
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

  factory GetIspCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs.fromMap(Map<String, dynamic> map) {
    return GetIspCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs(
      cacheNodeResourceName: map['cacheNodeResourceName'] as String,
      customerResourceName: map['customerResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

