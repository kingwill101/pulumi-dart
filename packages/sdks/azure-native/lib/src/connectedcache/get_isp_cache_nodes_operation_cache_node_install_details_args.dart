// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_install_details_args_doc}
/// Arguments for getIspCacheNodesOperationCacheNodeInstallDetails.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_isp_cache_nodes_operation_cache_node_install_details_args_doc}
class GetIspCacheNodesOperationCacheNodeInstallDetailsArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String> cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIspCacheNodesOperationCacheNodeInstallDetailsArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIspCacheNodesOperationCacheNodeInstallDetailsArgs({
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

  factory GetIspCacheNodesOperationCacheNodeInstallDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetIspCacheNodesOperationCacheNodeInstallDetailsArgs(
      cacheNodeResourceName: pulumi.Input.fromValue(map['cacheNodeResourceName'] as String),
      customerResourceName: pulumi.Input.fromValue(map['customerResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
