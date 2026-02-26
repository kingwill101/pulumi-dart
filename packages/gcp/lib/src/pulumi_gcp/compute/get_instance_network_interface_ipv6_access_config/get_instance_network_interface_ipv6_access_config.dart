// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  final String externalIpv6;

  /// The prefix length of the external IPv6 range.
  final String externalIpv6PrefixLength;

  /// The name of the instance. One of <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> or <span pulumi-lang-nodejs="`selfLink`" pulumi-lang-dotnet="`SelfLink`" pulumi-lang-go="`selfLink`" pulumi-lang-python="`self_link`" pulumi-lang-yaml="`selfLink`" pulumi-lang-java="`selfLink`">`self_link`</span> must be provided.
  final String name;

  /// The [networking tier][network-tier] used for configuring this instance. One of `PREMIUM` or `STANDARD`.
  final String networkTier;

  /// The DNS domain name for the public PTR record.
  final String publicPtrDomainName;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final String securityPolicy;

  GetInstanceNetworkInterfaceIpv6AccessConfig({
    required this.externalIpv6,
    required this.externalIpv6PrefixLength,
    required this.name,
    required this.networkTier,
    required this.publicPtrDomainName,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalIpv6'] = externalIpv6;
    map['externalIpv6PrefixLength'] = externalIpv6PrefixLength;
    map['name'] = name;
    map['networkTier'] = networkTier;
    map['publicPtrDomainName'] = publicPtrDomainName;
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory GetInstanceNetworkInterfaceIpv6AccessConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceNetworkInterfaceIpv6AccessConfig(
      externalIpv6: map['externalIpv6'] as String,
      externalIpv6PrefixLength: map['externalIpv6PrefixLength'] as String,
      name: map['name'] as String,
      networkTier: map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] as String,
      securityPolicy: map['securityPolicy'] as String,
    );
  }
}
