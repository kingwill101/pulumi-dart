// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceShard {
  /// The instance type of the shard node.
  final String class_;
  /// The description of the shard node.
  final String description;
  /// The ID of the shard node.
  final String nodeId;
  /// The storage space of the shard node.
  final int storage;

  /// Creates a new [GetInstancesInstanceShard].
  /// [class_] The instance type of the shard node.
  /// [description] The description of the shard node.
  /// [nodeId] The ID of the shard node.
  /// [storage] The storage space of the shard node.
  GetInstancesInstanceShard({
    required this.class_,
    required this.description,
    required this.nodeId,
    required this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'class': class_,
      'description': description,
      'nodeId': nodeId,
      'storage': storage,
    };
  }

  factory GetInstancesInstanceShard.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceShard(
      class_: map['class'] as String,
      description: map['description'] as String,
      nodeId: map['nodeId'] as String,
      storage: map['storage'] as int,
    );
  }
}

