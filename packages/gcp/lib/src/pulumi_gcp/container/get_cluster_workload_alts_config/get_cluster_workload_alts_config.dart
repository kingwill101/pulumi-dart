// ignore_for_file: unused_element, unnecessary_cast

class GetClusterWorkloadAltsConfig {
  /// Whether the alts handshaker should be enabled or not for direct-path. Requires Workload Identity (workloadPool must be non-empty).
  final bool enableAlts;

  GetClusterWorkloadAltsConfig({
    required this.enableAlts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableAlts'] = enableAlts;
    return map;
  }

  factory GetClusterWorkloadAltsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterWorkloadAltsConfig(
      enableAlts: map['enableAlts'] as bool,
    );
  }
}
