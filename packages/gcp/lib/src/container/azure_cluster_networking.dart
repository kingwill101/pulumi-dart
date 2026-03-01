// ignore_for_file: unused_element, unnecessary_cast

class AzureClusterNetworking {
  /// The IP address range of the pods in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All pods in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;

  /// The IP address range for services in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All services in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creating a cluster.
  final List<String> serviceAddressCidrBlocks;

  /// The Azure Resource Manager (ARM) ID of the VNet associated with your cluster. All components in the cluster (i.e. control plane and node pools) run on a single VNet. Example: `/subscriptions/*/resourceGroups/*/providers/Microsoft.Network/virtualNetworks/*` This field cannot be changed after creation.
  ///
  /// - - -
  final String virtualNetworkId;

  /// Creates a new [AzureClusterNetworking].
  /// [podAddressCidrBlocks] The IP address range of the pods in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All pods in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  /// [serviceAddressCidrBlocks] The IP address range for services in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All services in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creating a cluster.
  /// [virtualNetworkId] The Azure Resource Manager (ARM) ID of the VNet associated with your cluster. All components in the cluster (i.e. control plane and node pools) run on a single VNet. Example: `/subscriptions/*/resourceGroups/*/providers/Microsoft.Network/virtualNetworks/*` This field cannot be changed after creation.
  AzureClusterNetworking({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory AzureClusterNetworking.fromMap(Map<String, dynamic> map) {
    return AzureClusterNetworking(
      podAddressCidrBlocks: (map['podAddressCidrBlocks'] as List)
          .cast<String>(),
      serviceAddressCidrBlocks: (map['serviceAddressCidrBlocks'] as List)
          .cast<String>(),
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}
