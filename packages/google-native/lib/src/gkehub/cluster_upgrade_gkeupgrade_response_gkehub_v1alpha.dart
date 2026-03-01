// ignore_for_file: unused_element, unnecessary_cast

/// GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
class ClusterUpgradeGKEUpgradeResponseGkehubV1alpha {
  /// Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  final String name;

  /// Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  final String version;

  /// Creates a new [ClusterUpgradeGKEUpgradeResponseGkehubV1alpha].
  /// [name] Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  /// [version] Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  ClusterUpgradeGKEUpgradeResponseGkehubV1alpha({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'version': version};
  }

  factory ClusterUpgradeGKEUpgradeResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterUpgradeGKEUpgradeResponseGkehubV1alpha(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
