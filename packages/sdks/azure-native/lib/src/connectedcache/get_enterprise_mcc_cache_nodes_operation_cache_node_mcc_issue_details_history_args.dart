// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_cache_node_mcc_issue_details_history_args_doc}
/// Arguments for getEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistory.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_cache_node_mcc_issue_details_history_args_doc}
class GetEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String> cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs({
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

  factory GetEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseMccCacheNodesOperationCacheNodeMccIssueDetailsHistoryArgs(
      cacheNodeResourceName: (map['cacheNodeResourceName'] as String).input(),
      customerResourceName: (map['customerResourceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

