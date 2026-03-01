// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_sharding_network_private_address_sharding_network_private_address_args_doc}
/// The set of arguments for ShardingNetworkPrivateAddress.
/// {@endtemplate}
/// {@macro pulumi_mongodb_sharding_network_private_address_sharding_network_private_address_args_doc}
class ShardingNetworkPrivateAddressArgs {
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
  final pulumi.Input<String> dbInstanceId;
  /// The ID of the Shard node or ConfigServer node.
  final pulumi.Input<String> nodeId;
  /// The zone ID of the instance.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ShardingNetworkPrivateAddressArgs].
  /// [accountName] The username of the account.
  /// [accountPassword] The password for the account.
  /// [dbInstanceId] The ID of the sharded cluster instance.
  /// [nodeId] The ID of the Shard node or ConfigServer node.
  /// [zoneId] The zone ID of the instance.
  ShardingNetworkPrivateAddressArgs({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? accountPassword,
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> nodeId,
    required pulumi.Output<String> zoneId,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      nodeId = pulumi.Input.asInput<String>(nodeId),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'dbInstanceId': dbInstanceId,
      'nodeId': nodeId,
      'zoneId': zoneId,
    };
  }

  factory ShardingNetworkPrivateAddressArgs.fromMap(Map<String, dynamic> map) {
    return ShardingNetworkPrivateAddressArgs(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      nodeId: pulumi.Output.create<String>(map['nodeId'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

