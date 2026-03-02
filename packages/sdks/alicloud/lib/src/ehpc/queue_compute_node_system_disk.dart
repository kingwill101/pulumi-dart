// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueComputeNodeSystemDisk {
  /// Category
  final pulumi.Input<String>? category;
  /// Level
  final pulumi.Input<String>? level;
  /// Size
  final pulumi.Input<int>? size;

  /// Creates a new [QueueComputeNodeSystemDisk].
  /// [category] Category
  /// [level] Level
  /// [size] Size
  QueueComputeNodeSystemDisk({
    this.category,
    this.level,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'level': ?level,
      'size': ?size,
    };
  }

  factory QueueComputeNodeSystemDisk.fromMap(Map<String, dynamic> map) {
    return QueueComputeNodeSystemDisk(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      level: map['level'] == null ? null : (map['level'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as int).input(),
    );
  }
}

