// ignore_for_file: unused_element, unnecessary_cast

class InstanceFromTemplateNetworkInterfaceAccessConfig {
  /// The IP address that is be 1:1 mapped to the instance's network ip.
  final String? natIp;

  /// The networking tier used for configuring this instance. One of PREMIUM or STANDARD.
  final String? networkTier;

  /// The DNS domain name for the public PTR record.
  final String? publicPtrDomainName;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final String? securityPolicy;

  /// Creates a new [InstanceFromTemplateNetworkInterfaceAccessConfig].
  /// [natIp] The IP address that is be 1:1 mapped to the instance's network ip.
  /// [networkTier] The networking tier used for configuring this instance. One of PREMIUM or STANDARD.
  /// [publicPtrDomainName] The DNS domain name for the public PTR record.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  InstanceFromTemplateNetworkInterfaceAccessConfig({
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

  factory InstanceFromTemplateNetworkInterfaceAccessConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceFromTemplateNetworkInterfaceAccessConfig(
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
