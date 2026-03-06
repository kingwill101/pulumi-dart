// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_cache_nodes_operation_args_doc}
/// Arguments for getCacheNodesOperation.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_cache_nodes_operation_args_doc}
class GetCacheNodesOperationArgs {
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCacheNodesOperationArgs].
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCacheNodesOperationArgs({
    required this.customerResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerResourceName': customerResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCacheNodesOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetCacheNodesOperationArgs(
      customerResourceName: pulumi.Input.fromValue(map['customerResourceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

