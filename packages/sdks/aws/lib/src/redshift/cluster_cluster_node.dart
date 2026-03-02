// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterNode {
  /// Whether the node is a leader node or a compute node
  final pulumi.Input<String>? nodeRole;
  /// The private IP address of a node within a cluster
  final pulumi.Input<String>? privateIpAddress;
  /// The public IP address of a node within a cluster
  final pulumi.Input<String>? publicIpAddress;

  /// Creates a new [ClusterClusterNode].
  /// [nodeRole] Whether the node is a leader node or a compute node
  /// [privateIpAddress] The private IP address of a node within a cluster
  /// [publicIpAddress] The public IP address of a node within a cluster
  ClusterClusterNode({
    this.nodeRole,
    this.privateIpAddress,
    this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeRole': ?nodeRole,
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
    };
  }

  factory ClusterClusterNode.fromMap(Map<String, dynamic> map) {
    return ClusterClusterNode(
      nodeRole: map['nodeRole'] == null ? null : ((map['nodeRole'] as String).input()).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : ((map['privateIpAddress'] as String).input()).input(),
      publicIpAddress: map['publicIpAddress'] == null ? null : ((map['publicIpAddress'] as String).input()).input(),
    );
  }
}

