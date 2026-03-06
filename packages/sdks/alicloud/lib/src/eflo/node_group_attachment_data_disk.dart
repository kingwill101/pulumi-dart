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
  const NodeGroupAttachmentDataDisk({
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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteWithNode: (() { final guardedValue = map['deleteWithNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

