// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterNode {
  /// Whether the node is a leader node or a compute node
  final String? nodeRole;

  /// The private IP address of a node within a cluster
  final String? privateIpAddress;

  /// The public IP address of a node within a cluster
  final String? publicIpAddress;

  ClusterClusterNode({
    this.nodeRole,
    this.privateIpAddress,
    this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeRoleValue = nodeRole;
    if (nodeRoleValue != null) {
      map['nodeRole'] = nodeRoleValue;
    }
    final privateIpAddressValue = privateIpAddress;
    if (privateIpAddressValue != null) {
      map['privateIpAddress'] = privateIpAddressValue;
    }
    final publicIpAddressValue = publicIpAddress;
    if (publicIpAddressValue != null) {
      map['publicIpAddress'] = publicIpAddressValue;
    }
    return map;
  }

  factory ClusterClusterNode.fromMap(Map<String, dynamic> map) {
    return ClusterClusterNode(
      nodeRole: map['nodeRole'] == null ? null : map['nodeRole'] as String,
      privateIpAddress: map['privateIpAddress'] == null
          ? null
          : map['privateIpAddress'] as String,
      publicIpAddress: map['publicIpAddress'] == null
          ? null
          : map['publicIpAddress'] as String,
    );
  }
}
