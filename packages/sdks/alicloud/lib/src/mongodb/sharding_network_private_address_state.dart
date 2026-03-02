// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharding_network_private_address_network_address.dart';

/// Input properties used for looking up and filtering ShardingNetworkPrivateAddress resources.
class ShardingNetworkPrivateAddressState {
  /// The username of the account.
  /// - The name must be 4 to 16 characters in length and can contain lowercase letters, digits, and underscores (_). It must start with a lowercase letter.
  /// - You need to set the account name and password only when you apply for an endpoint for a shard or ConfigServer node for the first time. In this case, the account name and password are used for all shard and ConfigServer nodes.
  /// - The permissions of this account are fixed to read-only.
  final pulumi.Input<String>? accountName;
  /// The password for the account.
  /// - The password must contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include `!#$%^&*()_+-=`.
  /// - The password must be 8 to 32 characters in length.
  final pulumi.Input<String>? accountPassword;
  /// The ID of the sharded cluster instance.
  final pulumi.Input<String>? dbInstanceId;
  /// The connection string of the instance.
  final pulumi.Input<List<ShardingNetworkPrivateAddressNetworkAddress>>? networkAddresses;
  /// The ID of the Shard node or ConfigServer node.
  final pulumi.Input<String>? nodeId;
  /// The zone ID of the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ShardingNetworkPrivateAddressState].
  /// [accountName] The username of the account.
  /// [accountPassword] The password for the account.
  /// [dbInstanceId] The ID of the sharded cluster instance.
  /// [networkAddresses] The connection string of the instance.
  /// [nodeId] The ID of the Shard node or ConfigServer node.
  /// [zoneId] The zone ID of the instance.
  ShardingNetworkPrivateAddressState({
    this.accountName,
    this.accountPassword,
    this.dbInstanceId,
    this.networkAddresses,
    this.nodeId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'dbInstanceId': ?dbInstanceId,
      'networkAddresses': ?pulumi.Input.mapOptionalInputValue<List<ShardingNetworkPrivateAddressNetworkAddress>, List<Map<String, dynamic>>>(networkAddresses, (value) => pulumi.Input.encodeList<ShardingNetworkPrivateAddressNetworkAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeId': ?nodeId,
      'zoneId': ?zoneId,
    };
  }

  factory ShardingNetworkPrivateAddressState.fromMap(Map<String, dynamic> map) {
    return ShardingNetworkPrivateAddressState(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword']! as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      networkAddresses: map['networkAddresses'] == null ? null : (pulumi.Input.decodeList<ShardingNetworkPrivateAddressNetworkAddress>(map['networkAddresses']!, (value) => ShardingNetworkPrivateAddressNetworkAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

