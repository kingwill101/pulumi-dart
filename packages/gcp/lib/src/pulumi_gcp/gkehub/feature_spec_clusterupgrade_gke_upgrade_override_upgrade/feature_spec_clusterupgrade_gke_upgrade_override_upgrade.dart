// ignore_for_file: unused_element, unnecessary_cast

class FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade {
  /// Name of the upgrade, e.g., "k8s_control_plane". It should be a valid upgrade name. It must not exceet 99 characters.
  final String name;

  /// Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  final String version;

  FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['version'] = version;
    return map;
  }

  factory FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade.fromMap(
      Map<String, dynamic> map) {
    return FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
