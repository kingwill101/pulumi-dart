// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the cluster CIDR configuration while running in island mode.
class BareMetalIslandModeCidrConfigResponse {
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;
  /// All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field is mutable after creation starting with version 1.15.
  final List<String> serviceAddressCidrBlocks;

  /// Creates a new [BareMetalIslandModeCidrConfigResponse].
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field is mutable after creation starting with version 1.15.
  BareMetalIslandModeCidrConfigResponse({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
    };
  }

  factory BareMetalIslandModeCidrConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalIslandModeCidrConfigResponse(
      podAddressCidrBlocks: (map['podAddressCidrBlocks'] as List).cast<String>(),
      serviceAddressCidrBlocks: (map['serviceAddressCidrBlocks'] as List).cast<String>(),
    );
  }
}

