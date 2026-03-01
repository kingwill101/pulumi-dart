// ignore_for_file: unused_element, unnecessary_cast


class EdgeKubernetesWorkerNode {
  /// ID of the node.
  final String? id;
  /// The kubernetes cluster's name. It is unique in one Alicloud account.
  final String? name;
  /// The private IP address of node.
  final String? privateIp;

  /// Creates a new [EdgeKubernetesWorkerNode].
  /// [id] ID of the node.
  /// [name] The kubernetes cluster's name. It is unique in one Alicloud account.
  /// [privateIp] The private IP address of node.
  EdgeKubernetesWorkerNode({
    this.id,
    this.name,
    this.privateIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'privateIp': ?privateIp,
    };
  }

  factory EdgeKubernetesWorkerNode.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesWorkerNode(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
    );
  }
}

