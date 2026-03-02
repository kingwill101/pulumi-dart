// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_get_sharding_network_private_addresses_get_sharding_network_private_addresses_args_doc}
/// Arguments for getShardingNetworkPrivateAddresses.
/// {@endtemplate}
/// {@macro pulumi_mongodb_get_sharding_network_private_addresses_get_sharding_network_private_addresses_args_doc}
class GetShardingNetworkPrivateAddressesArgs {
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  final pulumi.Input<String>? nodeId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The role of the node. Valid values: `Primary` or `Secondary`.
  final pulumi.Input<String>? role;

  /// Creates a new [GetShardingNetworkPrivateAddressesArgs].
  /// [dbInstanceId] The db instance id.
  /// [nodeId] The ID of the `mongos`, `shard`, or `Configserver` node in the sharded cluster instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [role] The role of the node. Valid values: `Primary` or `Secondary`.
  GetShardingNetworkPrivateAddressesArgs({
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

  factory GetShardingNetworkPrivateAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetShardingNetworkPrivateAddressesArgs(
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
    );
  }
}

