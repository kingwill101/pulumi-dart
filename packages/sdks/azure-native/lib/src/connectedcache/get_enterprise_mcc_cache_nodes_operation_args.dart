// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_args_doc}
/// Arguments for getEnterpriseMccCacheNodesOperation.
/// {@endtemplate}
/// {@macro pulumi_connectedcache_get_enterprise_mcc_cache_nodes_operation_args_doc}
class GetEnterpriseMccCacheNodesOperationArgs {
  /// Name of the ConnectedCache resource
  final pulumi.Input<String> cacheNodeResourceName;
  /// Name of the Customer resource
  final pulumi.Input<String> customerResourceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnterpriseMccCacheNodesOperationArgs].
  /// [cacheNodeResourceName] Name of the ConnectedCache resource
  /// [customerResourceName] Name of the Customer resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEnterpriseMccCacheNodesOperationArgs({
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

  factory GetEnterpriseMccCacheNodesOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseMccCacheNodesOperationArgs(
      cacheNodeResourceName: pulumi.Output.create<String>(map['cacheNodeResourceName'] as String),
      customerResourceName: pulumi.Output.create<String>(map['customerResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

