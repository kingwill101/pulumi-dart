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
    pulumi.Output<String>? connectionDomain,
    pulumi.Output<int>? connectionPort,
    pulumi.Output<String>? connectionPrefix,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? replicaSetRole,
    pulumi.Output<String>? roleId,
  }) :
      connectionDomain = pulumi.Input.asOptionalInput<String>(connectionDomain),
      connectionPort = pulumi.Input.asOptionalInput<int>(connectionPort),
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      replicaSetRole = pulumi.Input.asOptionalInput<String>(replicaSetRole),
      roleId = pulumi.Input.asOptionalInput<String>(roleId);

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
      connectionDomain: map['connectionDomain'] == null ? null : pulumi.Output.create<String>(map['connectionDomain'] as String),
      connectionPort: map['connectionPort'] == null ? null : pulumi.Output.create<int>(map['connectionPort'] as int),
      connectionPrefix: map['connectionPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionPrefix'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      replicaSetRole: map['replicaSetRole'] == null ? null : pulumi.Output.create<String>(map['replicaSetRole'] as String),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
    );
  }
}

