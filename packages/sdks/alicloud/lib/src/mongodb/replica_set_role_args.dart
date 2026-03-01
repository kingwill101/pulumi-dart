// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_replica_set_role_replica_set_role_args_doc}
/// The set of arguments for ReplicaSetRole.
/// {@endtemplate}
/// {@macro pulumi_mongodb_replica_set_role_replica_set_role_args_doc}
class ReplicaSetRoleArgs {
  /// The port of the connection string, will be computed if not specified.`
  final pulumi.Input<int>? connectionPort;
  /// The prefix of the connection string, will be computed if not specified.
  final pulumi.Input<String>? connectionPrefix;
  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;
  /// The network type of the connection string. Valid values:
  /// - `VPC`: private network address.
  /// - `Public`: public network address.
  final pulumi.Input<String> networkType;
  /// The role ID in the replica set.
  final pulumi.Input<String> roleId;

  /// Creates a new [ReplicaSetRoleArgs].
  /// [connectionPort] The port of the connection string, will be computed if not specified.`
  /// [connectionPrefix] The prefix of the connection string, will be computed if not specified.
  /// [dbInstanceId] The instance ID.
  /// [networkType] The network type of the connection string. Valid values:
  /// [roleId] The role ID in the replica set.
  ReplicaSetRoleArgs({
    pulumi.Output<int>? connectionPort,
    pulumi.Output<String>? connectionPrefix,
    required pulumi.Output<String> dbInstanceId,
    required pulumi.Output<String> networkType,
    required pulumi.Output<String> roleId,
  }) :
      connectionPort = pulumi.Input.asOptionalInput<int>(connectionPort),
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      networkType = pulumi.Input.asInput<String>(networkType),
      roleId = pulumi.Input.asInput<String>(roleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPort': ?connectionPort,
      'connectionPrefix': ?connectionPrefix,
      'dbInstanceId': dbInstanceId,
      'networkType': networkType,
      'roleId': roleId,
    };
  }

  factory ReplicaSetRoleArgs.fromMap(Map<String, dynamic> map) {
    return ReplicaSetRoleArgs(
      connectionPort: map['connectionPort'] == null ? null : pulumi.Output.create<int>(map['connectionPort'] as int),
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      networkType: pulumi.Output.create<String>(map['networkType'] as String),
      roleId: pulumi.Output.create<String>(map['roleId'] as String),
    );
  }
}

