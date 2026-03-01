// ignore_for_file: unused_element, unnecessary_cast


class GetManagedKubernetesClustersClusterWorkerNode {
  /// ID of the node.
  final String id;
  /// Node name.
  final String name;
  /// The private IP address of node.
  final String privateIp;

  /// Creates a new [GetManagedKubernetesClustersClusterWorkerNode].
  /// [id] ID of the node.
  /// [name] Node name.
  /// [privateIp] The private IP address of node.
  GetManagedKubernetesClustersClusterWorkerNode({
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

  factory GetManagedKubernetesClustersClusterWorkerNode.fromMap(Map<String, dynamic> map) {
    return GetManagedKubernetesClustersClusterWorkerNode(
      id: map['id'] as String,
      name: map['name'] as String,
      privateIp: map['privateIp'] as String,
    );
  }
}

