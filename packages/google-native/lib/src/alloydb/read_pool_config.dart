// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for a read pool instance.
class ReadPoolConfig {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final int? nodeCount;

  /// Creates a new [ReadPoolConfig].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  ReadPoolConfig({
    this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeCount': ?nodeCount,
    };
  }

  factory ReadPoolConfig.fromMap(Map<String, dynamic> map) {
    return ReadPoolConfig(
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
    );
  }
}

