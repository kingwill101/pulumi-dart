// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_manager_ipam_pool_get_network_manager_ipam_pool_args_doc}
/// Arguments for getNetworkManagerIpamPool.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_manager_ipam_pool_get_network_manager_ipam_pool_args_doc}
class GetNetworkManagerIpamPoolArgs {
  /// The name of this Network Manager IPAM Pool.
  final pulumi.Input<String> name;
  /// The ID of the parent Network Manager.
  final pulumi.Input<String> networkManagerId;

  /// Creates a new [GetNetworkManagerIpamPoolArgs].
  /// [name] The name of this Network Manager IPAM Pool.
  /// [networkManagerId] The ID of the parent Network Manager.
  GetNetworkManagerIpamPoolArgs({
    required String name,
    required String networkManagerId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      networkManagerId = pulumi.Input.asInput<String>(networkManagerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'networkManagerId': networkManagerId,
    };
  }

  factory GetNetworkManagerIpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerIpamPoolArgs(
      name: map['name'] as String,
      networkManagerId: map['networkManagerId'] as String,
    );
  }
}

