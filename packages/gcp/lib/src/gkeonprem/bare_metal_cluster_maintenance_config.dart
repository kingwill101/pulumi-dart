// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterMaintenanceConfig {
  /// All IPv4 address from these ranges will be placed into maintenance mode.
  /// Nodes in maintenance mode will be cordoned and drained. When both of these
  /// are true, the "baremetal.cluster.gke.io/maintenance" annotation will be set
  /// on the node resource.
  final List<String> maintenanceAddressCidrBlocks;

  /// Creates a new [BareMetalClusterMaintenanceConfig].
  /// [maintenanceAddressCidrBlocks] All IPv4 address from these ranges will be placed into maintenance mode.
  BareMetalClusterMaintenanceConfig({
    required this.maintenanceAddressCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceAddressCidrBlocks'] = maintenanceAddressCidrBlocks;
    return map;
  }

  factory BareMetalClusterMaintenanceConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterMaintenanceConfig(
      maintenanceAddressCidrBlocks:
          (map['maintenanceAddressCidrBlocks'] as List).cast<String>(),
    );
  }
}
