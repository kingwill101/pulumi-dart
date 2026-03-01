// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceMongo {
  /// The instance type of the shard node.
  final String class_;
  /// The description of the shard node.
  final String description;
  /// The ID of the shard node.
  final String nodeId;

  /// Creates a new [GetInstancesInstanceMongo].
  /// [class_] The instance type of the shard node.
  /// [description] The description of the shard node.
  /// [nodeId] The ID of the shard node.
  GetInstancesInstanceMongo({
    required this.class_,
    required this.description,
    required this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'class': class_,
      'description': description,
      'nodeId': nodeId,
    };
  }

  factory GetInstancesInstanceMongo.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceMongo(
      class_: map['class'] as String,
      description: map['description'] as String,
      nodeId: map['nodeId'] as String,
    );
  }
}

