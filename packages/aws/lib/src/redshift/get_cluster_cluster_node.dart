// ignore_for_file: unused_element, unnecessary_cast

class GetClusterClusterNode {
  /// Whether the node is a leader node or a compute node
  final String nodeRole;

  /// Private IP address of a node within a cluster
  final String privateIpAddress;

  /// Public IP address of a node within a cluster
  final String publicIpAddress;

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
    final map = <String, dynamic>{};
    map['nodeRole'] = nodeRole;
    map['privateIpAddress'] = privateIpAddress;
    map['publicIpAddress'] = publicIpAddress;
    return map;
  }

  factory GetClusterClusterNode.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterNode(
      nodeRole: map['nodeRole'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      publicIpAddress: map['publicIpAddress'] as String,
    );
  }
}
