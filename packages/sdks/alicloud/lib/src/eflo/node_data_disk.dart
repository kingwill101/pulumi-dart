// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeDataDisk {
  /// Data disk type
  final pulumi.Input<String>? category;
  /// Performance level
  final pulumi.Input<String>? performanceLevel;
  /// Data disk size
  final pulumi.Input<int>? size;

  /// Creates a new [NodeDataDisk].
  /// [category] Data disk type
  /// [performanceLevel] Performance level
  /// [size] Data disk size
  NodeDataDisk({
    this.category,
    this.performanceLevel,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'performanceLevel': ?performanceLevel,
      'size': ?size,
    };
  }

  factory NodeDataDisk.fromMap(Map<String, dynamic> map) {
    return NodeDataDisk(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      performanceLevel: map['performanceLevel'] == null ? null : (map['performanceLevel'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
    );
  }
}

