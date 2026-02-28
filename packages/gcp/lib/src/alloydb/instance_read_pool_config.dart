// ignore_for_file: unused_element, unnecessary_cast

class InstanceReadPoolConfig {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final int? nodeCount;

  /// Creates a new [InstanceReadPoolConfig].
  /// [nodeCount] Read capacity, i.e. number of nodes in a read pool instance.
  InstanceReadPoolConfig({
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

  factory InstanceReadPoolConfig.fromMap(Map<String, dynamic> map) {
    return InstanceReadPoolConfig(
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
    );
  }
}
