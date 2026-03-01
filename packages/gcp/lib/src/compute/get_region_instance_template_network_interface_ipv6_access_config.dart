// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  final String externalIpv6;

  /// The prefix length of the external IPv6 range.
  final String externalIpv6PrefixLength;

  /// The name of the instance template. One of `name` or `filter` must be provided.
  final String name;

  /// The [networking tier][network-tier] used for configuring
  /// this instance template. This field can take the following values: PREMIUM or
  /// STANDARD. If this field is not specified, it is assumed to be PREMIUM.
  final String networkTier;

  /// The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  final String publicPtrDomainName;

  /// Creates a new [GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig].
  /// [externalIpv6] The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  /// [externalIpv6PrefixLength] The prefix length of the external IPv6 range.
  /// [name] The name of the instance template. One of `name` or `filter` must be provided.
  /// [networkTier] The [networking tier][network-tier] used for configuring
  /// [publicPtrDomainName] The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig({
    required this.externalIpv6,
    required this.externalIpv6PrefixLength,
    required this.name,
    required this.networkTier,
    required this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpv6': externalIpv6,
      'externalIpv6PrefixLength': externalIpv6PrefixLength,
      'name': name,
      'networkTier': networkTier,
      'publicPtrDomainName': publicPtrDomainName,
    };
  }

  factory GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateNetworkInterfaceIpv6AccessConfig(
      externalIpv6: map['externalIpv6'] as String,
      externalIpv6PrefixLength: map['externalIpv6PrefixLength'] as String,
      name: map['name'] as String,
      networkTier: map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] as String,
    );
  }
}
