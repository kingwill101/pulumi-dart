// ignore_for_file: unused_element, unnecessary_cast


class GetEdgeKubernetesClustersClusterWorkerNode {
  /// ID of the node.
  final String id;
  /// Node name.
  final String name;
  /// The private IP address of node.
  final String privateIp;

  /// Creates a new [GetEdgeKubernetesClustersClusterWorkerNode].
  /// [id] ID of the node.
  /// [name] Node name.
  /// [privateIp] The private IP address of node.
  GetEdgeKubernetesClustersClusterWorkerNode({
    required this.id,
    required this.name,
    required this.privateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateIp': privateIp,
    };
  }

  factory GetEdgeKubernetesClustersClusterWorkerNode.fromMap(Map<String, dynamic> map) {
    return GetEdgeKubernetesClustersClusterWorkerNode(
      id: map['id'] as String,
      name: map['name'] as String,
      privateIp: map['privateIp'] as String,
    );
  }
}

