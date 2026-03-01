// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Memcached Node.
class NodeConfigResponseMemcacheV1beta2 {
  /// Number of cpus per Memcached node.
  final int cpuCount;

  /// Memory size in MiB for each Memcached node.
  final int memorySizeMb;

  /// Creates a new [NodeConfigResponseMemcacheV1beta2].
  /// [cpuCount] Number of cpus per Memcached node.
  /// [memorySizeMb] Memory size in MiB for each Memcached node.
  NodeConfigResponseMemcacheV1beta2({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'memorySizeMb': memorySizeMb,
    };
  }

  factory NodeConfigResponseMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return NodeConfigResponseMemcacheV1beta2(
      cpuCount: map['cpuCount'] as int,
      memorySizeMb: map['memorySizeMb'] as int,
    );
  }
}
