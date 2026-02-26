// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the cluster CIDR configuration while running in island mode.
class BareMetalIslandModeCidrConfig {
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field is mutable after creation starting with version 1.15.
  final List<String> serviceAddressCidrBlocks;

  BareMetalIslandModeCidrConfig({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['podAddressCidrBlocks'] = podAddressCidrBlocks;
    map['serviceAddressCidrBlocks'] = serviceAddressCidrBlocks;
    return map;
  }

  factory BareMetalIslandModeCidrConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalIslandModeCidrConfig(
      podAddressCidrBlocks:
          (map['podAddressCidrBlocks'] as List).cast<String>(),
      serviceAddressCidrBlocks:
          (map['serviceAddressCidrBlocks'] as List).cast<String>(),
    );
  }
}
