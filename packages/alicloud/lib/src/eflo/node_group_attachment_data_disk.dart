// ignore_for_file: unused_element, unnecessary_cast


class NodeGroupAttachmentDataDisk {
  /// Type
  final String? category;
  /// Indicate whether the data disk is released with the node. true indicates that the data disk will be released together when the node unsubscribes.
  final bool? deleteWithNode;
  /// Performance level
  final String? performanceLevel;
  /// Data disk size
  final int? size;

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
      category: map['category'] == null ? null : map['category'] as String,
      deleteWithNode: map['deleteWithNode'] == null ? null : map['deleteWithNode'] as bool,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

