// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a read pool instance.
class ReadPoolConfig2 {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final int? nodeCount;

  ReadPoolConfig2({
    this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    return map;
  }

  factory ReadPoolConfig2.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfig2(
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
    );
  }
}
