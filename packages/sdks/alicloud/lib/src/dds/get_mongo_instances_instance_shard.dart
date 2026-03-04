// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMongoInstancesInstanceShard {
  final pulumi.Input<String> class_;
  final pulumi.Input<String> description;
  final pulumi.Input<String> nodeId;
  final pulumi.Input<int> storage;

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
      class_: pulumi.Input.fromValue(map['class'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      storage: pulumi.Input.fromValue(map['storage'] as int),
    );
  }
}
