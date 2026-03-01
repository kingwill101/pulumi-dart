// ignore_for_file: unused_element, unnecessary_cast


class GetLkeClusterPoolNode {
  /// The LKE Cluster's ID.
  final String id;
  /// The ID of the underlying Linode instance.
  final int instanceId;
  /// The status of the node. (`ready`, `not_ready`)
  final String status;

  /// Creates a new [GetLkeClusterPoolNode].
  /// [id] The LKE Cluster's ID.
  /// [instanceId] The ID of the underlying Linode instance.
  /// [status] The status of the node. (`ready`, `not_ready`)
  GetLkeClusterPoolNode({
    required this.id,
    required this.instanceId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instanceId': instanceId,
      'status': status,
    };
  }

  factory GetLkeClusterPoolNode.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterPoolNode(
      id: map['id'] as String,
      instanceId: map['instanceId'] as int,
      status: map['status'] as String,
    );
  }
}

