// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkInterfaceAccessConfig {
  /// The IP address that will be 1:1 mapped to the instance's
  /// network ip. If not given, one will be generated.
  final String? natIp;

  /// The service-level to be provided for IPv6 traffic when the
  /// subnet has an external subnet. Only PREMIUM or STANDARD tier is valid for IPv6.
  final String? networkTier;

  /// The domain name to be used when creating DNSv6
  /// records for the external IPv6 ranges..
  final String? publicPtrDomainName;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final String? securityPolicy;

  /// Creates a new [InstanceNetworkInterfaceAccessConfig].
  /// [natIp] The IP address that will be 1:1 mapped to the instance's
  /// [networkTier] The service-level to be provided for IPv6 traffic when the
  /// [publicPtrDomainName] The domain name to be used when creating DNSv6
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  InstanceNetworkInterfaceAccessConfig({
    this.natIp,
    this.networkTier,
    this.publicPtrDomainName,
    this.securityPolicy,
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
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    return map;
  }

  factory InstanceNetworkInterfaceAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceNetworkInterfaceAccessConfig(
      natIp: map['natIp'] == null ? null : map['natIp'] as String,
      networkTier:
          map['networkTier'] == null ? null : map['networkTier'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] == null
          ? null
          : map['publicPtrDomainName'] as String,
      securityPolicy: map['securityPolicy'] == null
          ? null
          : map['securityPolicy'] as String,
    );
  }
}
