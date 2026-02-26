// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminMaintenanceConfig specifies configurations to put bare metal Admin cluster CRs nodes in and out of maintenance.
class BareMetalAdminMaintenanceConfig {
  /// All IPv4 address from these ranges will be placed into maintenance mode. Nodes in maintenance mode will be cordoned and drained. When both of these are true, the "baremetal.cluster.gke.io/maintenance" annotation will be set on the node resource.
  final List<String> maintenanceAddressCidrBlocks;

  BareMetalAdminMaintenanceConfig({
    required this.maintenanceAddressCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maintenanceAddressCidrBlocks'] = maintenanceAddressCidrBlocks;
    return map;
  }

  factory BareMetalAdminMaintenanceConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminMaintenanceConfig(
      maintenanceAddressCidrBlocks:
          (map['maintenanceAddressCidrBlocks'] as List).cast<String>(),
    );
  }
}
