// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a read pool instance.
class ReadPoolConfig3 {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final int? nodeCount;

  ReadPoolConfig3({
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

  factory ReadPoolConfig3.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfig3(
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
    );
  }
}
