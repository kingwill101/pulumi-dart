// ignore_for_file: unused_element, unnecessary_cast

class FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade {
  /// Name of the upgrade, e.g., <span pulumi-lang-nodejs=""k8sControlPlane"" pulumi-lang-dotnet=""K8sControlPlane"" pulumi-lang-go=""k8sControlPlane"" pulumi-lang-python=""k8s_control_plane"" pulumi-lang-yaml=""k8sControlPlane"" pulumi-lang-java=""k8sControlPlane"">"k8s_control_plane"</span>. It should be a valid upgrade name. It must not exceet 99 characters.
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
