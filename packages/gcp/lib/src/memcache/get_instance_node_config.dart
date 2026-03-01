// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceNodeConfig {
  /// Number of CPUs per node.
  final int cpuCount;
  /// Memory size in Mebibytes for each memcache node.
  final int memorySizeMb;

  /// Creates a new [GetInstanceNodeConfig].
  /// [cpuCount] Number of CPUs per node.
  /// [memorySizeMb] Memory size in Mebibytes for each memcache node.
  GetInstanceNodeConfig({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuCount': cpuCount,
      'memorySizeMb': memorySizeMb,
    };
  }

  factory GetInstanceNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceNodeConfig(
      cpuCount: map['cpuCount'] as int,
      memorySizeMb: map['memorySizeMb'] as int,
    );
  }
}

