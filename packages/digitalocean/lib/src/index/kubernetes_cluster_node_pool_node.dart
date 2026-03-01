// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterNodePoolNode {
  /// The date and time when the node was created.
  final String? createdAt;
  /// The id of the node's droplet
  final String? dropletId;
  /// A unique ID that can be used to identify and reference the node.
  final String? id;
  /// A name for the Kubernetes cluster.
  final String? name;
  /// A string indicating the current status of the individual node.
  final String? status;
  /// The date and time when the node was last updated.
  final String? updatedAt;

  /// Creates a new [KubernetesClusterNodePoolNode].
  /// [createdAt] The date and time when the node was created.
  /// [dropletId] The id of the node's droplet
  /// [id] A unique ID that can be used to identify and reference the node.
  /// [name] A name for the Kubernetes cluster.
  /// [status] A string indicating the current status of the individual node.
  /// [updatedAt] The date and time when the node was last updated.
  KubernetesClusterNodePoolNode({
    this.createdAt,
    this.dropletId,
    this.id,
    this.name,
    this.status,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'dropletId': ?dropletId,
      'id': ?id,
      'name': ?name,
      'status': ?status,
      'updatedAt': ?updatedAt,
    };
  }

  factory KubernetesClusterNodePoolNode.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePoolNode(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      dropletId: map['dropletId'] == null ? null : map['dropletId'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
    );
  }
}

