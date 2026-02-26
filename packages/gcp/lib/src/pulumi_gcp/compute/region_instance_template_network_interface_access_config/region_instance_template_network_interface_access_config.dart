// ignore_for_file: unused_element, unnecessary_cast

class RegionInstanceTemplateNetworkInterfaceAccessConfig {
  /// The IP address that will be 1:1 mapped to the instance's
  /// network ip. If not given, one will be generated.
  final String? natIp;

  /// The service-level to be provided for IPv6 traffic when the
  /// subnet has an external subnet. Only PREMIUM and STANDARD tier is valid for IPv6.
  final String? networkTier;

  /// The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  final String? publicPtrDomainName;

  RegionInstanceTemplateNetworkInterfaceAccessConfig({
    this.natIp,
    this.networkTier,
    this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final natIpValue = natIp;
    if (natIpValue != null) {
      map['natIp'] = natIpValue;
    }
    final networkTierValue = networkTier;
    if (networkTierValue != null) {
      map['networkTier'] = networkTierValue;
    }
    final publicPtrDomainNameValue = publicPtrDomainName;
    if (publicPtrDomainNameValue != null) {
      map['publicPtrDomainName'] = publicPtrDomainNameValue;
    }
    return map;
  }

  factory RegionInstanceTemplateNetworkInterfaceAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceTemplateNetworkInterfaceAccessConfig(
      natIp: map['natIp'] == null ? null : map['natIp'] as String,
      networkTier:
          map['networkTier'] == null ? null : map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] == null
          ? null
          : map['publicPtrDomainName'] as String,
    );
  }
}
