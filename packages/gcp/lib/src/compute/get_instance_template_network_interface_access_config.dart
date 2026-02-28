// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceTemplateNetworkInterfaceAccessConfig {
  /// The IP address that will be 1:1 mapped to the instance's
  /// network ip. If not given, one will be generated.
  final String natIp;

  /// The [networking tier][network-tier] used for configuring
  /// this instance template. This field can take the following values: PREMIUM or
  /// STANDARD. If this field is not specified, it is assumed to be PREMIUM.
  final String networkTier;

  /// The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  final String publicPtrDomainName;

  /// Creates a new [GetInstanceTemplateNetworkInterfaceAccessConfig].
  /// [natIp] The IP address that will be 1:1 mapped to the instance's
  /// [networkTier] The [networking tier][network-tier] used for configuring
  /// [publicPtrDomainName] The DNS domain name for the public PTR record.The DNS domain name for the public PTR record.
  GetInstanceTemplateNetworkInterfaceAccessConfig({
    required this.natIp,
    required this.networkTier,
    required this.publicPtrDomainName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['natIp'] = natIp;
    map['networkTier'] = networkTier;
    map['publicPtrDomainName'] = publicPtrDomainName;
    return map;
  }

  factory GetInstanceTemplateNetworkInterfaceAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceTemplateNetworkInterfaceAccessConfig(
      natIp: map['natIp'] as String,
      networkTier: map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] as String,
    );
  }
}
