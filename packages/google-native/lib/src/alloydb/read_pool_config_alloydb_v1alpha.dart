// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a read pool instance.
class ReadPoolConfigAlloydbV1alpha {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final int? nodeCount;

  /// Creates a new [ReadPoolConfigAlloydbV1alpha].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  ReadPoolConfigAlloydbV1alpha({this.nodeCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeCount': ?nodeCount};
  }

  factory ReadPoolConfigAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfigAlloydbV1alpha(
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
    );
  }
}
