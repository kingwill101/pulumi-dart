// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstanceMongo {
  /// The instance type of the shard node.
  final pulumi.Input<String> class_;
  /// The description of the shard node.
  final pulumi.Input<String> description;
  /// The ID of the shard node.
  final pulumi.Input<String> nodeId;

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
      class_: pulumi.Input.fromValue(map['class'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
    );
  }
}

