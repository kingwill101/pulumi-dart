// ignore_for_file: unused_element, unnecessary_cast


class GetClusterAddonsConfigPodSnapshotConfig {
  /// Whether the Pod Snapshot feature is enabled for this cluster.
  final bool enabled;

  /// Creates a new [GetClusterAddonsConfigPodSnapshotConfig].
  /// [enabled] Whether the Pod Snapshot feature is enabled for this cluster.
  GetClusterAddonsConfigPodSnapshotConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterAddonsConfigPodSnapshotConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigPodSnapshotConfig(
      enabled: map['enabled'] as bool,
    );
  }
}

