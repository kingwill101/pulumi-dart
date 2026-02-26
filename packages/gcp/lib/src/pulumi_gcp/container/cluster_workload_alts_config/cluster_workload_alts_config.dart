// ignore_for_file: unused_element, unnecessary_cast

class ClusterWorkloadAltsConfig {
  /// Whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workloadPool) must be non-empty).
  final bool enableAlts;

  ClusterWorkloadAltsConfig({
    required this.enableAlts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableAlts'] = enableAlts;
    return map;
  }

  factory ClusterWorkloadAltsConfig.fromMap(Map<String, dynamic> map) {
    return ClusterWorkloadAltsConfig(
      enableAlts: map['enableAlts'] as bool,
    );
  }
}
