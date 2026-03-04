// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharding_network_public_address_network_address.dart';

/// Input properties used for looking up and filtering ShardingNetworkPublicAddress resources.
class ShardingNetworkPublicAddressState {
  /// The ID of the instance.
  final pulumi.Input<String>? dbInstanceId;

  /// The endpoint of the instance.
  final pulumi.Input<List<ShardingNetworkPublicAddressNetworkAddress>>?
  networkAddresses;

  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  final pulumi.Input<String>? nodeId;

  /// Creates a new [ShardingNetworkPublicAddressState].
  /// [dbInstanceId] The ID of the instance.
  /// [networkAddresses] The endpoint of the instance.
  /// [nodeId] The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  ShardingNetworkPublicAddressState({
    this.dbInstanceId,
    this.networkAddresses,
    this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': ?dbInstanceId,
      'networkAddresses':
          ?pulumi.Input.mapOptionalInputValue<
            List<ShardingNetworkPublicAddressNetworkAddress>,
            List<Map<String, dynamic>>
          >(
            networkAddresses,
            (value) =>
                pulumi.Input.encodeList<
                  ShardingNetworkPublicAddressNetworkAddress,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'nodeId': ?nodeId,
    };
  }

  factory ShardingNetworkPublicAddressState.fromMap(Map<String, dynamic> map) {
    return ShardingNetworkPublicAddressState(
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkAddresses: (() {
        final guardedValue = map['networkAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ShardingNetworkPublicAddressNetworkAddress>(
            guardedValue,
            (value) => ShardingNetworkPublicAddressNetworkAddress.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      nodeId: (() {
        final guardedValue = map['nodeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
