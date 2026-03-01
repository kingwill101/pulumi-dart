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
  GetShardingNetworkPublicAddressesArgs({
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? role,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      role = pulumi.Input.asOptionalInput<String>(role);

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
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

