// ignore_for_file: unused_element, unnecessary_cast


class GetMongoInstancesInstanceMongo {
  final String class_;
  final String description;
  final String nodeId;

  /// Creates a new [GetMongoInstancesInstanceMongo].
  /// [class_] Required.
  /// [description] Required.
  /// [nodeId] Required.
  GetMongoInstancesInstanceMongo({
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

  factory GetMongoInstancesInstanceMongo.fromMap(Map<String, dynamic> map) {
    return GetMongoInstancesInstanceMongo(
      class_: map['class'] as String,
      description: map['description'] as String,
      nodeId: map['nodeId'] as String,
    );
  }
}

