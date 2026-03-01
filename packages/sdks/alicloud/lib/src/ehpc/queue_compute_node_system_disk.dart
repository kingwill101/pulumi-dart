// ignore_for_file: unused_element, unnecessary_cast


class QueueComputeNodeSystemDisk {
  /// Category
  final String? category;
  /// Level
  final String? level;
  /// Size
  final int? size;

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
      category: map['category'] == null ? null : map['category'] as String,
      level: map['level'] == null ? null : map['level'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

