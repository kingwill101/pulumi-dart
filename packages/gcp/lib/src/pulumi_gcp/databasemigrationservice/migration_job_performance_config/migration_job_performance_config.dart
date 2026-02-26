// ignore_for_file: unused_element, unnecessary_cast

class MigrationJobPerformanceConfig {
  /// Initial dump parallelism level.
  /// Possible values are: `MIN`, `OPTIMAL`, `MAX`.
  final String? dumpParallelLevel;

  MigrationJobPerformanceConfig({
    this.dumpParallelLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dumpParallelLevelValue = dumpParallelLevel;
    if (dumpParallelLevelValue != null) {
      map['dumpParallelLevel'] = dumpParallelLevelValue;
    }
    return map;
  }

  factory MigrationJobPerformanceConfig.fromMap(Map<String, dynamic> map) {
    return MigrationJobPerformanceConfig(
      dumpParallelLevel: map['dumpParallelLevel'] == null
          ? null
          : map['dumpParallelLevel'] as String,
    );
  }
}
