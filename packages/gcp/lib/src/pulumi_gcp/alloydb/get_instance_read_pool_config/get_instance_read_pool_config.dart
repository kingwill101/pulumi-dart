// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceReadPoolConfig {
  /// Read capacity, i.e. number of nodes in a read pool instance.
  final int nodeCount;

  GetInstanceReadPoolConfig({
    required this.nodeCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeCount'] = nodeCount;
    return map;
  }

  factory GetInstanceReadPoolConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceReadPoolConfig(
      nodeCount: map['nodeCount'] as int,
    );
  }
}
