// ignore_for_file: unused_element, unnecessary_cast


class NodeDataDisk {
  /// Data disk type
  final String? category;
  /// Performance level
  final String? performanceLevel;
  /// Data disk size
  final int? size;

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
      category: map['category'] == null ? null : map['category'] as String,
      performanceLevel: map['performanceLevel'] == null ? null : map['performanceLevel'] as String,
      size: map['size'] == null ? null : map['size'] as int,
    );
  }
}

