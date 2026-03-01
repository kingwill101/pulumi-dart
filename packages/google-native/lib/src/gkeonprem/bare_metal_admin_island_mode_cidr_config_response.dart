// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminIslandModeCidrConfig specifies the cluster CIDR configuration while running in island mode.
class BareMetalAdminIslandModeCidrConfigResponse {
  /// All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  final List<String> podAddressCidrBlocks;

  /// All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  final List<String> serviceAddressCidrBlocks;

  /// Creates a new [BareMetalAdminIslandModeCidrConfigResponse].
  /// [podAddressCidrBlocks] All pods in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  /// [serviceAddressCidrBlocks] All services in the cluster are assigned an RFC1918 IPv4 address from these ranges. This field cannot be changed after creation.
  BareMetalAdminIslandModeCidrConfigResponse({
    required this.podAddressCidrBlocks,
    required this.serviceAddressCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'podAddressCidrBlocks': podAddressCidrBlocks,
      'serviceAddressCidrBlocks': serviceAddressCidrBlocks,
    };
  }

  factory BareMetalAdminIslandModeCidrConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminIslandModeCidrConfigResponse(
      podAddressCidrBlocks: (map['podAddressCidrBlocks'] as List)
          .cast<String>(),
      serviceAddressCidrBlocks: (map['serviceAddressCidrBlocks'] as List)
          .cast<String>(),
    );
  }
}
