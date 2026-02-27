// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Memcached Node.
class NodeConfigMemcacheV1 {
  /// Number of cpus per Memcached node.
  final int cpuCount;

  /// Memory size in MiB for each Memcached node.
  final int memorySizeMb;

  NodeConfigMemcacheV1({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    map['memorySizeMb'] = memorySizeMb;
    return map;
  }

  factory NodeConfigMemcacheV1.fromMap(Map<String, dynamic> map) {
    return NodeConfigMemcacheV1(
      cpuCount: map['cpuCount'] as int,
      memorySizeMb: map['memorySizeMb'] as int,
    );
  }
}
