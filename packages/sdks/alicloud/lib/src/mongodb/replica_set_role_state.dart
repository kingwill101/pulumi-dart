// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicaSetRole resources.
class ReplicaSetRoleState {
  /// The connection address of the role.
  final pulumi.Input<String>? connectionDomain;
  /// The port of the connection string, will be computed if not specified.`
  final pulumi.Input<int>? connectionPort;
  /// The prefix of the connection string, will be computed if not specified.
  final pulumi.Input<String>? connectionPrefix;
  /// The instance ID.
  final pulumi.Input<String>? dbInstanceId;
  /// The network type of the connection string. Valid values:
  /// - `VPC`: private network address.
  /// - `Public`: public network address.
  final pulumi.Input<String>? networkType;
  /// The role of the related connection string.
  final pulumi.Input<String>? replicaSetRole;
  /// The role ID in the replica set.
  final pulumi.Input<String>? roleId;

  /// Creates a new [ReplicaSetRoleState].
  /// [connectionDomain] The connection address of the role.
  /// [connectionPort] The port of the connection string, will be computed if not specified.`
  /// [connectionPrefix] The prefix of the connection string, will be computed if not specified.
  /// [dbInstanceId] The instance ID.
  /// [networkType] The network type of the connection string. Valid values:
  /// [replicaSetRole] The role of the related connection string.
  /// [roleId] The role ID in the replica set.
  ReplicaSetRoleState({
    this.connectionDomain,
    this.connectionPort,
    this.connectionPrefix,
    this.dbInstanceId,
    this.networkType,
    this.replicaSetRole,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDomain': ?connectionDomain,
      'connectionPort': ?connectionPort,
      'connectionPrefix': ?connectionPrefix,
      'dbInstanceId': ?dbInstanceId,
      'networkType': ?networkType,
      'replicaSetRole': ?replicaSetRole,
      'roleId': ?roleId,
    };
  }

  factory ReplicaSetRoleState.fromMap(Map<String, dynamic> map) {
    return ReplicaSetRoleState(
      connectionDomain: map['connectionDomain'] == null ? null : (map['connectionDomain']! as String).input(),
      connectionPort: map['connectionPort'] == null ? null : (map['connectionPort']! as int).input(),
      connectionPrefix: map['connectionPrefix'] == null ? null : (map['connectionPrefix']! as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId']! as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
      replicaSetRole: map['replicaSetRole'] == null ? null : (map['replicaSetRole']! as String).input(),
      roleId: map['roleId'] == null ? null : (map['roleId']! as String).input(),
    );
  }
}

