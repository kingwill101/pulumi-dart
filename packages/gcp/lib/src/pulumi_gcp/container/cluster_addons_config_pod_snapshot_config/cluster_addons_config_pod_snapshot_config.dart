// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigPodSnapshotConfig {
  /// Whether the Pod Snapshot feature is enabled for this cluster.
  final bool enabled;

  ClusterAddonsConfigPodSnapshotConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterAddonsConfigPodSnapshotConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterAddonsConfigPodSnapshotConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
