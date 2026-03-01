// ignore_for_file: unused_element, unnecessary_cast

class InstanceTemplateNetworkInterfaceAccessConfig {
  /// The IP address that will be 1:1 mapped to the instance's
  /// network ip. If not given, one will be generated.
  final String? natIp;

  /// The service-level to be provided for IPv6 traffic when the
  /// subnet has an external subnet. Only PREMIUM and STANDARD tier is valid for IPv6.
  final String? networkTier;

  /// The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  final String? publicPtrDomainName;

  /// Creates a new [InstanceTemplateNetworkInterfaceAccessConfig].
  /// [natIp] The IP address that will be 1:1 mapped to the instance's
  /// [networkTier] The service-level to be provided for IPv6 traffic when the
  /// [publicPtrDomainName] The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  InstanceTemplateNetworkInterfaceAccessConfig({
    this.natIp,
    this.networkTier,
    this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natIp': ?natIp,
      'networkTier': ?networkTier,
      'publicPtrDomainName': ?publicPtrDomainName,
    };
  }

  factory InstanceTemplateNetworkInterfaceAccessConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceTemplateNetworkInterfaceAccessConfig(
      natIp: map['natIp'] == null ? null : map['natIp'] as String,
      networkTier: map['networkTier'] == null
          ? null
          : map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] == null
          ? null
          : map['publicPtrDomainName'] as String,
    );
  }
}
