// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_isp_cache_nodes_operation_bgp_cidrs_args_doc}
/// Arguments for getIspCacheNodesOperationBgpCidrs.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_bgp_cidrs_args_doc}
class GetIspCacheNodesOperationBgpCidrsArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String> cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIspCacheNodesOperationBgpCidrsArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetIspCacheNodesOperationBgpCidrsArgs({
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

  factory GetIspCacheNodesOperationBgpCidrsArgs.fromMap(Map<String, dynamic> map) {
    return GetIspCacheNodesOperationBgpCidrsArgs(
      cacheNodeResourceName: map['cacheNodeResourceName'] as String,
      customerResourceName: map['customerResourceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

