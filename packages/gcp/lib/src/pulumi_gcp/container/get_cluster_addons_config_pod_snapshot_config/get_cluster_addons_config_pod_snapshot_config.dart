// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigPodSnapshotConfig {
  /// Whether the Pod Snapshot feature is enabled for this cluster.
  final bool enabled;

  GetClusterAddonsConfigPodSnapshotConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigPodSnapshotConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigPodSnapshotConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
