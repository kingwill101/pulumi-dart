// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigLustreCsiDriverConfig {
  /// If set to true, the Lustre CSI driver will initialize LNet (the virtual network layer for Lustre kernel module) using port 6988.
  /// This flag is required to workaround a port conflict with the gke-metadata-server on GKE nodes.
  final bool enableLegacyLustrePort;

  /// Whether the Lustre CSI driver is enabled for this cluster.
  final bool enabled;

  GetClusterAddonsConfigLustreCsiDriverConfig({
    required this.enableLegacyLustrePort,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableLegacyLustrePort'] = enableLegacyLustrePort;
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterAddonsConfigLustreCsiDriverConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigLustreCsiDriverConfig(
      enableLegacyLustrePort: map['enableLegacyLustrePort'] as bool,
      enabled: map['enabled'] as bool,
    );
  }
}
