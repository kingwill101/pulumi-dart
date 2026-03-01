// ignore_for_file: unused_element, unnecessary_cast

/// GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
class ClusterUpgradeGKEUpgrade {
  /// Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  final String? name;

  /// Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  final String? version;

  /// Creates a new [ClusterUpgradeGKEUpgrade].
  /// [name] Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  /// [version] Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  ClusterUpgradeGKEUpgrade({this.name, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'version': ?version};
  }

  factory ClusterUpgradeGKEUpgrade.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgrade(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
