// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceShard {
  /// The instance type of the shard node.
  final pulumi.Input<String> class_;
  /// The description of the shard node.
  final pulumi.Input<String> description;
  /// The ID of the shard node.
  final pulumi.Input<String> nodeId;
  /// The storage space of the shard node.
  final pulumi.Input<int> storage;

  /// Creates a new [GetInstancesInstanceShard].
  /// [class_] The instance type of the shard node.
  /// [description] The description of the shard node.
  /// [nodeId] The ID of the shard node.
  /// [storage] The storage space of the shard node.
  const GetInstancesInstanceShard({
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
      class_: pulumi.Input.fromValue(map['class'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
      storage: pulumi.Input.fromValue(map['storage'] as int),
    );
  }
}

