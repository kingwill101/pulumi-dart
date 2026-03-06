// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_get_sharding_network_public_addresses_get_sharding_network_public_addresses_args_doc}
/// Arguments for getShardingNetworkPublicAddresses.
/// {@endtemplate}
/// {@macro pulumi_mongodb_get_sharding_network_public_addresses_get_sharding_network_public_addresses_args_doc}
class GetShardingNetworkPublicAddressesArgs {
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  final pulumi.Input<String>? nodeId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The role of the node. Valid values: `Primary` or `Secondary`.
  final pulumi.Input<String>? role;

  /// Creates a new [GetShardingNetworkPublicAddressesArgs].
  /// [dbInstanceId] The db instance id.
  /// [nodeId] The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [role] The role of the node. Valid values: `Primary` or `Secondary`.
  const GetShardingNetworkPublicAddressesArgs({
    required this.dbInstanceId,
    this.nodeId,
    this.outputFile,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'nodeId': ?nodeId,
      'outputFile': ?outputFile,
      'role': ?role,
    };
  }

  factory GetShardingNetworkPublicAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetShardingNetworkPublicAddressesArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

