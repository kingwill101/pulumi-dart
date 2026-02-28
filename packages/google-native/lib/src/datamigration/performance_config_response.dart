// ignore_for_file: unused_element, unnecessary_cast

/// Performance configuration definition.
class PerformanceConfigResponse {
  /// Initial dump parallelism level.
  final String dumpParallelLevel;

  /// Creates a new [PerformanceConfigResponse].
  /// [dumpParallelLevel] Initial dump parallelism level.
  PerformanceConfigResponse({
    required this.dumpParallelLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dumpParallelLevel'] = dumpParallelLevel;
    return map;
  }

  factory PerformanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return PerformanceConfigResponse(
      dumpParallelLevel: map['dumpParallelLevel'] as String,
    );
  }
}
