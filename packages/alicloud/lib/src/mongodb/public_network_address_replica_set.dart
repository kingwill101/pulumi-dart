// ignore_for_file: unused_element, unnecessary_cast


class PublicNetworkAddressReplicaSet {
  /// The connection address of the node.
  final String? connectionDomain;
  /// The connection port of the node.
  final String? connectionPort;
  /// The connection type.
  final String? connectionType;
  /// The network type, should be always "Public".
  final String? networkType;
  /// The role of the node.
  final String? replicaSetRole;
  /// The id of the role.
  final String? roleId;

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
      connectionDomain: map['connectionDomain'] == null ? null : map['connectionDomain'] as String,
      connectionPort: map['connectionPort'] == null ? null : map['connectionPort'] as String,
      connectionType: map['connectionType'] == null ? null : map['connectionType'] as String,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      replicaSetRole: map['replicaSetRole'] == null ? null : map['replicaSetRole'] as String,
      roleId: map['roleId'] == null ? null : map['roleId'] as String,
    );
  }
}

