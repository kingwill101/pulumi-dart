// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_sharding_network_public_address_sharding_network_public_address_args_doc}
/// The set of arguments for ShardingNetworkPublicAddress.
/// {@endtemplate}
/// {@macro pulumi_mongodb_sharding_network_public_address_sharding_network_public_address_args_doc}
class ShardingNetworkPublicAddressArgs {
  /// The ID of the instance.
  final pulumi.Input<String> dbInstanceId;
  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  final pulumi.Input<String> nodeId;

  /// Creates a new [ShardingNetworkPublicAddressArgs].
  /// [dbInstanceId] The ID of the instance.
  /// [nodeId] The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  ShardingNetworkPublicAddressArgs({
    required this.dbInstanceId,
    required this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'nodeId': nodeId,
    };
  }

  factory ShardingNetworkPublicAddressArgs.fromMap(Map<String, dynamic> map) {
    return ShardingNetworkPublicAddressArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
    );
  }
}

