// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_list_capacity_pool_cache_peering_passphrases_args_doc}
/// Arguments for listCapacityPoolCachePeeringPassphrases.
/// {@endtemplate}
/// {@macro pulumi_netapp_list_capacity_pool_cache_peering_passphrases_args_doc}
class ListCapacityPoolCachePeeringPassphrasesArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the cache resource.
  final pulumi.Input<String> cacheName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListCapacityPoolCachePeeringPassphrasesArgs].
  /// [accountName] The name of the NetApp account
  /// [cacheName] The name of the cache resource.
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListCapacityPoolCachePeeringPassphrasesArgs({
    required this.accountName,
    required this.cacheName,
    required this.poolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'cacheName': cacheName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListCapacityPoolCachePeeringPassphrasesArgs.fromMap(Map<String, dynamic> map) {
    return ListCapacityPoolCachePeeringPassphrasesArgs(
      accountName: (map['accountName'] as String).input(),
      cacheName: (map['cacheName'] as String).input(),
      poolName: (map['poolName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

