// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  final String? externalIpv6;

  /// The prefix length of the external IPv6 range.
  final String? externalIpv6PrefixLength;

  /// The name of this access configuration.
  final String? name;

  /// The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  final String networkTier;

  /// The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  final String? publicPtrDomainName;

  /// Creates a new [RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig].
  /// [externalIpv6] The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. The field is output only, an IPv6 address from a subnetwork associated with the instance will be allocated dynamically.
  /// [externalIpv6PrefixLength] The prefix length of the external IPv6 range.
  /// [name] The name of this access configuration.
  /// [networkTier] The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  /// [publicPtrDomainName] The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    required this.networkTier,
    this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalIpv6Value = externalIpv6;
    if (externalIpv6Value != null) {
      map['externalIpv6'] = externalIpv6Value;
    }
    final externalIpv6PrefixLengthValue = externalIpv6PrefixLength;
    if (externalIpv6PrefixLengthValue != null) {
      map['externalIpv6PrefixLength'] = externalIpv6PrefixLengthValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkTier'] = networkTier;
    final publicPtrDomainNameValue = publicPtrDomainName;
    if (publicPtrDomainNameValue != null) {
      map['publicPtrDomainName'] = publicPtrDomainNameValue;
    }
    return map;
  }

  factory RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceTemplateNetworkInterfaceIpv6AccessConfig(
      externalIpv6:
          map['externalIpv6'] == null ? null : map['externalIpv6'] as String,
      externalIpv6PrefixLength: map['externalIpv6PrefixLength'] == null
          ? null
          : map['externalIpv6PrefixLength'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkTier: map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] == null
          ? null
          : map['publicPtrDomainName'] as String,
    );
  }
}
