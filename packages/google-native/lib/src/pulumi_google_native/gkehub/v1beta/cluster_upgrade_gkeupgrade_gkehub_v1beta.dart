// ignore_for_file: unused_element, unnecessary_cast

/// GKEUpgrade represents a GKE provided upgrade, e.g., control plane upgrade.
class ClusterUpgradeGKEUpgradeGkehubV1beta {
  /// Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  final String? name;

  /// Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  final String? version;

  ClusterUpgradeGKEUpgradeGkehubV1beta({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ClusterUpgradeGKEUpgradeGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeGKEUpgradeGkehubV1beta(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
