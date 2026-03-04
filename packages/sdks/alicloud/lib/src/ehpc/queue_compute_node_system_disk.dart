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
  QueueComputeNodeSystemDisk({this.category, this.level, this.size});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'level': ?level,
      'size': ?size,
    };
  }

  factory QueueComputeNodeSystemDisk.fromMap(Map<String, dynamic> map) {
    return QueueComputeNodeSystemDisk(
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      level: (() {
        final guardedValue = map['level'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
