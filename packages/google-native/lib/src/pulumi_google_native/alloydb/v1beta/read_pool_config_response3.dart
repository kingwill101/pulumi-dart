// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a read pool instance.
class ReadPoolConfigResponse3 {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final int nodeCount;

  ReadPoolConfigResponse3({
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeCount'] = nodeCount;
    return map;
  }

  factory ReadPoolConfigResponse3.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfigResponse3(
      nodeCount: map['nodeCount'] as int,
    );
  }
}
