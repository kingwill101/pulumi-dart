// ignore_for_file: unused_element, unnecessary_cast

class InstanceNodeConfig {
  /// Number of CPUs per node.
  final int cpuCount;

  /// Memory size in Mebibytes for each memcache node.
  final int memorySizeMb;

  InstanceNodeConfig({
    required this.cpuCount,
    required this.memorySizeMb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuCount'] = cpuCount;
    map['memorySizeMb'] = memorySizeMb;
    return map;
  }

  factory InstanceNodeConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNodeConfig(
      cpuCount: map['cpuCount'] as int,
      memorySizeMb: map['memorySizeMb'] as int,
    );
  }
}
