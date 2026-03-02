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
      class_: (map['class'] as String).input(),
      description: (map['description'] as String).input(),
      nodeId: (map['nodeId'] as String).input(),
      storage: (map['storage'] as int).input(),
    );
  }
}

