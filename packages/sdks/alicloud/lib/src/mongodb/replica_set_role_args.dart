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
  const ReplicaSetRoleArgs({
    this.connectionPort,
    this.connectionPrefix,
    required this.dbInstanceId,
    required this.networkType,
    required this.roleId,
  });

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
      connectionPort: (() { final guardedValue = map['connectionPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      connectionPrefix: (() { final guardedValue = map['connectionPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
    );
  }
}

