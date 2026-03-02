// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMongoInstancesInstanceMongo {
  final pulumi.Input<String> class_;
  final pulumi.Input<String> description;
  final pulumi.Input<String> nodeId;

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
      class_: (map['class'] as String).input(),
      description: (map['description'] as String).input(),
      nodeId: (map['nodeId'] as String).input(),
    );
  }
}

