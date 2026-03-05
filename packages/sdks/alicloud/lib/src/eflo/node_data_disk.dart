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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      performanceLevel: (() { final guardedValue = map['performanceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

