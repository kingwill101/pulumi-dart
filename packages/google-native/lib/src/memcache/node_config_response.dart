// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for a Memcached Node.
class NodeConfigResponse {
  /// Number of cpus per Memcached node.
  final int cpuCount;

  /// Memory size in MiB for each Memcached node.
  final int memorySizeMb;

  /// Creates a new [NodeConfigResponse].
  /// [cpuCount] Number of cpus per Memcached node.
  /// [memorySizeMb] Memory size in MiB for each Memcached node.
  NodeConfigResponse({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    map['memorySizeMb'] = memorySizeMb;
    return map;
  }

  factory NodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodeConfigResponse(
      cpuCount: map['cpuCount'] as int,
      memorySizeMb: map['memorySizeMb'] as int,
    );
  }
}
