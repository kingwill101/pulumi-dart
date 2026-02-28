// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for direct-path (via ALTS) with workload identity.
class WorkloadALTSConfig {
  /// enable_alts controls whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workload_pool must be non-empty).
  final bool? enableAlts;

  /// Creates a new [WorkloadALTSConfig].
  /// [enableAlts] enable_alts controls whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workload_pool must be non-empty).
  WorkloadALTSConfig({
    this.enableAlts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableAltsValue = enableAlts;
    if (enableAltsValue != null) {
      map['enableAlts'] = enableAltsValue;
    }
    return map;
  }

  factory WorkloadALTSConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadALTSConfig(
      enableAlts: map['enableAlts'] == null ? null : map['enableAlts'] as bool,
    );
  }
}
