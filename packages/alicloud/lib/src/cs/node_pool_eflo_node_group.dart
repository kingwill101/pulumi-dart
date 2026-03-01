// ignore_for_file: unused_element, unnecessary_cast


class NodePoolEfloNodeGroup {
  /// The ID of the associated Lingjun cluster is required when creating a Lingjun node pool.
  final String? clusterId;
  /// When creating a Lingjun node pool, you need the Lingjun group ID of the associated Lingjun cluster.
  final String? groupId;

  /// Creates a new [NodePoolEfloNodeGroup].
  /// [clusterId] The ID of the associated Lingjun cluster is required when creating a Lingjun node pool.
  /// [groupId] When creating a Lingjun node pool, you need the Lingjun group ID of the associated Lingjun cluster.
  NodePoolEfloNodeGroup({
    this.clusterId,
    this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'groupId': ?groupId,
    };
  }

  factory NodePoolEfloNodeGroup.fromMap(Map<String, dynamic> map) {
    return NodePoolEfloNodeGroup(
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
    );
  }
}

