// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTemplateNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  final String externalIpv6;

  /// The prefix length of the external IPv6 range.
  final String externalIpv6PrefixLength;

  /// The name of the instance template. One of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>, <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> or <span pulumi-lang-nodejs="`selfLinkUnique`" pulumi-lang-dotnet="`SelfLinkUnique`" pulumi-lang-go="`selfLinkUnique`" pulumi-lang-python="`self_link_unique`" pulumi-lang-yaml="`selfLinkUnique`" pulumi-lang-java="`selfLinkUnique`">`self_link_unique`</span> must be provided.
  final String name;

  /// The [networking tier][network-tier] used for configuring
  /// this instance template. This field can take the following values: PREMIUM or
  /// STANDARD. If this field is not specified, it is assumed to be PREMIUM.
  final String networkTier;

  /// The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  final String publicPtrDomainName;

  GetInstanceTemplateNetworkInterfaceIpv6AccessConfig({
    required this.externalIpv6,
    required this.externalIpv6PrefixLength,
    required this.name,
    required this.networkTier,
    required this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIpv6'] = externalIpv6;
    map['externalIpv6PrefixLength'] = externalIpv6PrefixLength;
    map['name'] = name;
    map['networkTier'] = networkTier;
    map['publicPtrDomainName'] = publicPtrDomainName;
    return map;
  }

  factory GetInstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTemplateNetworkInterfaceIpv6AccessConfig(
      externalIpv6: map['externalIpv6'] as String,
      externalIpv6PrefixLength: map['externalIpv6PrefixLength'] as String,
      name: map['name'] as String,
      networkTier: map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] as String,
    );
  }
}
