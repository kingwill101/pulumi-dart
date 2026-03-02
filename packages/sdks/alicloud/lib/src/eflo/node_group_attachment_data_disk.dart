// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupAttachmentDataDisk {
  /// Type
  final pulumi.Input<String>? category;
  /// Indicate whether the data disk is released with the node. true indicates that the data disk will be released together when the node unsubscribes.
  final pulumi.Input<bool>? deleteWithNode;
  /// Performance level
  final pulumi.Input<String>? performanceLevel;
  /// Data disk size
  final pulumi.Input<int>? size;

  /// Creates a new [NodeGroupAttachmentDataDisk].
  /// [category] Type
  /// [deleteWithNode] Indicate whether the data disk is released with the node. true indicates that the data disk will be released together when the node unsubscribes.
  /// [performanceLevel] Performance level
  /// [size] Data disk size
  NodeGroupAttachmentDataDisk({
    this.category,
    this.deleteWithNode,
    this.performanceLevel,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'deleteWithNode': ?deleteWithNode,
      'performanceLevel': ?performanceLevel,
      'size': ?size,
    };
  }

  factory NodeGroupAttachmentDataDisk.fromMap(Map<String, dynamic> map) {
    return NodeGroupAttachmentDataDisk(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      deleteWithNode: map['deleteWithNode'] == null ? null : (map['deleteWithNode']! as bool).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
    );
  }
}

