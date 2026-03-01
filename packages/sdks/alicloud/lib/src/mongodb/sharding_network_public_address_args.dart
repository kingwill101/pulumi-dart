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
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> nodeId,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      nodeId = pulumi.Input.asInput<String>(nodeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'nodeId': nodeId,
    };
  }

  factory ShardingNetworkPublicAddressArgs.fromMap(Map<String, dynamic> map) {
    return ShardingNetworkPublicAddressArgs(
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      nodeId: pulumi.Output.create<String>(map['nodeId'] as String),
    );
  }
}

