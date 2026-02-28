// ignore_for_file: unused_element, unnecessary_cast

class BareMetalClusterNetworkConfigIslandModeCidr {
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  final List<String> serviceAddressCidrBlocks;

  /// Creates a new [BareMetalClusterNetworkConfigIslandModeCidr].
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  BareMetalClusterNetworkConfigIslandModeCidr({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['podAddressCidrBlocks'] = podAddressCidrBlocks;
    map['serviceAddressCidrBlocks'] = serviceAddressCidrBlocks;
    return map;
  }

  factory BareMetalClusterNetworkConfigIslandModeCidr.fromMap(
      Map<String, dynamic> map) {
    return BareMetalClusterNetworkConfigIslandModeCidr(
      podAddressCidrBlocks:
          (map['podAddressCidrBlocks'] as List).cast<String>(),
      serviceAddressCidrBlocks:
          (map['serviceAddressCidrBlocks'] as List).cast<String>(),
    );
  }
}
