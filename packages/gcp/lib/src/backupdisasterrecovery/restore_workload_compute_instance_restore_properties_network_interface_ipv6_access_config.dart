// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig {
  /// (Optional)
  final String? externalIp;

  /// (Optional)
  final String? externalIpv6;

  /// (Optional)
  final int? externalIpv6PrefixLength;

  /// Required. The resource name of the backup instance.
  final String? name;

  /// Possible values: ["NETWORK_TIER_UNSPECIFIED", "PREMIUM", "STANDARD"]
  final String? networkTier;

  /// (Optional)
  final String? publicPtrDomainName;

  /// (Optional)
  final bool? setPublicPtr;

  /// Output only. Type of the resource.
  final String? type;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig].
  /// [externalIp] (Optional)
  /// [externalIpv6] (Optional)
  /// [externalIpv6PrefixLength] (Optional)
  /// [name] Required. The resource name of the backup instance.
  /// [networkTier] Possible values: ["NETWORK_TIER_UNSPECIFIED", "PREMIUM", "STANDARD"]
  /// [publicPtrDomainName] (Optional)
  /// [setPublicPtr] (Optional)
  /// [type] Output only. Type of the resource.
  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig({
    this.externalIp,
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    this.networkTier,
    this.publicPtrDomainName,
    this.setPublicPtr,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
      'externalIpv6': ?externalIpv6,
      'externalIpv6PrefixLength': ?externalIpv6PrefixLength,
      'name': ?name,
      'networkTier': ?networkTier,
      'publicPtrDomainName': ?publicPtrDomainName,
      'setPublicPtr': ?setPublicPtr,
      'type': ?type,
    };
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceIpv6AccessConfig(
      externalIp: map['externalIp'] == null
          ? null
          : map['externalIp'] as String,
      externalIpv6: map['externalIpv6'] == null
          ? null
          : map['externalIpv6'] as String,
      externalIpv6PrefixLength: map['externalIpv6PrefixLength'] == null
          ? null
          : map['externalIpv6PrefixLength'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      networkTier: map['networkTier'] == null
          ? null
          : map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] == null
          ? null
          : map['publicPtrDomainName'] as String,
      setPublicPtr: map['setPublicPtr'] == null
          ? null
          : map['setPublicPtr'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
