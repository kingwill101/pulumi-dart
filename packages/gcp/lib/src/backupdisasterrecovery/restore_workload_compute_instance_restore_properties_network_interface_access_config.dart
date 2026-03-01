// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig {
  /// (Optional)
  final String? externalIp;

  /// (Optional)
  final String? externalIpv6;

  /// (Optional)
  final int? externalIpv6PrefixLength;

  /// Optional. The name of this access configuration.
  final String? name;

  /// Possible values are: `NETWORK_TIER_UNSPECIFIED`, `PREMIUM`, `STANDARD`.
  final String? networkTier;

  /// (Optional)
  final String? publicPtrDomainName;

  /// (Optional)
  final bool? setPublicPtr;

  /// Optional. The type of configuration.
  /// Possible values are: `ACCESS_TYPE_UNSPECIFIED`, `ONE_TO_ONE_NAT`, `DIRECT_IPV6`.
  final String? type;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig].
  /// [externalIp] (Optional)
  /// [externalIpv6] (Optional)
  /// [externalIpv6PrefixLength] (Optional)
  /// [name] Optional. The name of this access configuration.
  /// [networkTier] Possible values are: `NETWORK_TIER_UNSPECIFIED`, `PREMIUM`, `STANDARD`.
  /// [publicPtrDomainName] (Optional)
  /// [setPublicPtr] (Optional)
  /// [type] Optional. The type of configuration.
  RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig({
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

  factory RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesNetworkInterfaceAccessConfig(
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
