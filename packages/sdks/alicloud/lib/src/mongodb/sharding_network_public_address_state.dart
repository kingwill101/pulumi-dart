// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharding_network_public_address_network_address.dart';

/// Input properties used for looking up and filtering ShardingNetworkPublicAddress resources.
class ShardingNetworkPublicAddressState {
  /// The ID of the instance.
  final pulumi.Input<String>? dbInstanceId;
  /// The endpoint of the instance.
  final pulumi.Input<List<ShardingNetworkPublicAddressNetworkAddress>>? networkAddresses;
  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  final pulumi.Input<String>? nodeId;

  /// Creates a new [ShardingNetworkPublicAddressState].
  /// [dbInstanceId] The ID of the instance.
  /// [networkAddresses] The endpoint of the instance.
  /// [nodeId] The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  ShardingNetworkPublicAddressState({
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<List<ShardingNetworkPublicAddressNetworkAddress>>? networkAddresses,
    pulumi.Output<String>? nodeId,
  }) :
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      networkAddresses = pulumi.Input.asOptionalInput<List<ShardingNetworkPublicAddressNetworkAddress>>(networkAddresses),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'networkAddresses': ?pulumi.Input.mapOptionalInputValue<List<ShardingNetworkPublicAddressNetworkAddress>, List<Map<String, dynamic>>>(networkAddresses, (value) => pulumi.Input.encodeList<ShardingNetworkPublicAddressNetworkAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeId': ?nodeId,
    };
  }

  factory ShardingNetworkPublicAddressState.fromMap(Map<String, dynamic> map) {
    return ShardingNetworkPublicAddressState(
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      networkAddresses: map['networkAddresses'] == null ? null : pulumi.Output.create<List<ShardingNetworkPublicAddressNetworkAddress>>(pulumi.Input.decodeList<ShardingNetworkPublicAddressNetworkAddress>(map['networkAddresses'], (value) => ShardingNetworkPublicAddressNetworkAddress.fromMap((value as Map).cast<String, dynamic>()))),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
    );
  }
}

