// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade {
  /// The name of the feature you want to know the status of.
  final String name;

  /// Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  final String version;

  /// Creates a new [GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade].
  /// [name] The name of the feature you want to know the status of.
  /// [version] Version of the upgrade, e.g., "1.22.1-gke.100". It should be a valid version. It must not exceet 99 characters.
  GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'version': version};
  }

  factory GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
