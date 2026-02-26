// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNodeConfig {
  /// Number of CPUs per node.
  final int cpuCount;

  /// Memory size in Mebibytes for each memcache node.
  final int memorySizeMb;

  GetInstanceNodeConfig({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    map['memorySizeMb'] = memorySizeMb;
    return map;
  }

  factory GetInstanceNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceNodeConfig(
      cpuCount: map['cpuCount'] as int,
      memorySizeMb: map['memorySizeMb'] as int,
    );
  }
}
