// ignore_for_file: unused_element, unnecessary_cast


class GetMongoInstancesInstanceShard {
  final String class_;
  final String description;
  final String nodeId;
  final int storage;

  /// Creates a new [GetMongoInstancesInstanceShard].
  /// [class_] Required.
  /// [description] Required.
  /// [nodeId] Required.
  /// [storage] Required.
  GetMongoInstancesInstanceShard({
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

  factory GetMongoInstancesInstanceShard.fromMap(Map<String, dynamic> map) {
    return GetMongoInstancesInstanceShard(
      class_: map['class'] as String,
      description: map['description'] as String,
      nodeId: map['nodeId'] as String,
      storage: map['storage'] as int,
    );
  }
}

