// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PublicNetworkAddressReplicaSet {
  /// The connection address of the node.
  final pulumi.Input<String>? connectionDomain;

  /// The connection port of the node.
  final pulumi.Input<String>? connectionPort;

  /// The connection type.
  final pulumi.Input<String>? connectionType;

  /// The network type, should be always "Public".
  final pulumi.Input<String>? networkType;

  /// The role of the node.
  final pulumi.Input<String>? replicaSetRole;

  /// The id of the role.
  final pulumi.Input<String>? roleId;

  /// Creates a new [PublicNetworkAddressReplicaSet].
  /// [connectionDomain] The connection address of the node.
  /// [connectionPort] The connection port of the node.
  /// [connectionType] The connection type.
  /// [networkType] The network type, should be always "Public".
  /// [replicaSetRole] The role of the node.
  /// [roleId] The id of the role.
  PublicNetworkAddressReplicaSet({
    this.connectionDomain,
    this.connectionPort,
    this.connectionType,
    this.networkType,
    this.replicaSetRole,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDomain': ?connectionDomain,
      'connectionPort': ?connectionPort,
      'connectionType': ?connectionType,
      'networkType': ?networkType,
      'replicaSetRole': ?replicaSetRole,
      'roleId': ?roleId,
    };
  }

  factory PublicNetworkAddressReplicaSet.fromMap(Map<String, dynamic> map) {
    return PublicNetworkAddressReplicaSet(
      connectionDomain: (() {
        final guardedValue = map['connectionDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionPort: (() {
        final guardedValue = map['connectionPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionType: (() {
        final guardedValue = map['connectionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkType: (() {
        final guardedValue = map['networkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicaSetRole: (() {
        final guardedValue = map['replicaSetRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleId: (() {
        final guardedValue = map['roleId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
