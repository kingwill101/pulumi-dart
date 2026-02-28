// ignore_for_file: unused_element, unnecessary_cast

class InstanceNetworkInterfaceIpv6AccessConfig {
  /// The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  final String? externalIpv6;

  /// The prefix length of the external IPv6 range.
  final String? externalIpv6PrefixLength;

  /// A unique name for the resource, required by GCE.
  /// Changing this forces a new resource to be created.
  final String? name;

  /// The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  final String networkTier;

  /// The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  final String? publicPtrDomainName;

  /// A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  final String? securityPolicy;

  /// Creates a new [InstanceNetworkInterfaceIpv6AccessConfig].
  /// [externalIpv6] The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  /// [externalIpv6PrefixLength] The prefix length of the external IPv6 range.
  /// [name] A unique name for the resource, required by GCE.
  /// [networkTier] The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  /// [publicPtrDomainName] The domain name to be used when creating DNSv6 records for the external IPv6 ranges.
  /// [securityPolicy] A full or partial URL to a security policy to add to this instance. If this field is set to an empty string it will remove the associated security policy.
  InstanceNetworkInterfaceIpv6AccessConfig({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    required this.networkTier,
    this.publicPtrDomainName,
    this.securityPolicy,
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
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    return map;
  }

  factory InstanceNetworkInterfaceIpv6AccessConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceNetworkInterfaceIpv6AccessConfig(
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
      securityPolicy: map['securityPolicy'] == null
          ? null
          : map['securityPolicy'] as String,
    );
  }
}
