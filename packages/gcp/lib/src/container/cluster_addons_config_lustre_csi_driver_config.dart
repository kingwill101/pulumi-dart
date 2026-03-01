// ignore_for_file: unused_element, unnecessary_cast


class ClusterAddonsConfigLustreCsiDriverConfig {
  /// If set to true, the Lustre CSI driver will initialize LNet (the virtual network layer for Lustre kernel module) using port 6988.
  /// This flag is required to workaround a port conflict with the gke-metadata-server on GKE nodes.
  final bool? enableLegacyLustrePort;
  /// Whether the Lustre CSI driver is enabled for this cluster.
  final bool enabled;

  /// Creates a new [ClusterAddonsConfigLustreCsiDriverConfig].
  /// [enableLegacyLustrePort] If set to true, the Lustre CSI driver will initialize LNet (the virtual network layer for Lustre kernel module) using port 6988.
  /// [enabled] Whether the Lustre CSI driver is enabled for this cluster.
  ClusterAddonsConfigLustreCsiDriverConfig({
    this.enableLegacyLustrePort,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableLegacyLustrePort': ?enableLegacyLustrePort,
      'enabled': enabled,
    };
  }

  factory ClusterAddonsConfigLustreCsiDriverConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigLustreCsiDriverConfig(
      enableLegacyLustrePort: map['enableLegacyLustrePort'] == null ? null : map['enableLegacyLustrePort'] as bool,
      enabled: map['enabled'] as bool,
    );
  }
}

