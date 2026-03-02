// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterClusterNode {
  /// Whether the node is a leader node or a compute node
  final pulumi.Input<String> nodeRole;
  /// Private IP address of a node within a cluster
  final pulumi.Input<String> privateIpAddress;
  /// Public IP address of a node within a cluster
  final pulumi.Input<String> publicIpAddress;

  /// Creates a new [GetClusterClusterNode].
  /// [nodeRole] Whether the node is a leader node or a compute node
  /// [privateIpAddress] Private IP address of a node within a cluster
  /// [publicIpAddress] Public IP address of a node within a cluster
  GetClusterClusterNode({
    required this.nodeRole,
    required this.privateIpAddress,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeRole': nodeRole,
      'privateIpAddress': privateIpAddress,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory GetClusterClusterNode.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterNode(
      nodeRole: (map['nodeRole'] as String).input(),
      privateIpAddress: (map['privateIpAddress'] as String).input(),
      publicIpAddress: (map['publicIpAddress'] as String).input(),
    );
  }
}

