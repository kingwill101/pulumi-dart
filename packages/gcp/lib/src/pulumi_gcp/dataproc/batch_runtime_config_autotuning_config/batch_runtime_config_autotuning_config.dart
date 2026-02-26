// ignore_for_file: unused_element, unnecessary_cast

class BatchRuntimeConfigAutotuningConfig {
  /// Optional. Scenarios for which tunings are applied.
  /// Each value may be one of: `SCALING`, `BROADCAST_HASH_JOIN`, `MEMORY`.
  final List<String>? scenarios;

  BatchRuntimeConfigAutotuningConfig({
    this.scenarios,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scenariosValue = scenarios;
    if (scenariosValue != null) {
      map['scenarios'] = scenariosValue;
    }
    return map;
  }

  factory BatchRuntimeConfigAutotuningConfig.fromMap(Map<String, dynamic> map) {
    return BatchRuntimeConfigAutotuningConfig(
      scenarios: map['scenarios'] == null
          ? null
          : (map['scenarios'] as List).cast<String>(),
    );
  }
}
