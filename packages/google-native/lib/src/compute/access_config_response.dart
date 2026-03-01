// ignore_for_file: unused_element, unnecessary_cast

/// An access configuration attached to an instance's network interface. Only one access config per instance is supported.
class AccessConfigResponse {
  /// Applies to ipv6AccessConfigs only. The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  final String externalIpv6;

  /// Applies to ipv6AccessConfigs only. The prefix length of the external IPv6 range.
  final int externalIpv6PrefixLength;

  /// Type of the resource. Always compute#accessConfig for access configs.
  final String kind;

  /// The name of this access configuration. In accessConfigs (IPv4), the default and recommended name is External NAT, but you can use any arbitrary string, such as My external IP or Network Access. In ipv6AccessConfigs, the recommend name is External IPv6.
  final String name;

  /// Applies to accessConfigs (IPv4) only. An external IP address associated with this instance. Specify an unused static external IP address available to the project or leave this field undefined to use an IP from a shared ephemeral IP address pool. If you specify a static external IP address, it must live in the same region as the zone of the instance.
  final String natIP;

  /// This signifies the networking tier used for configuring this access configuration and can only take the following values: PREMIUM, STANDARD. If an AccessConfig is specified without a valid external IP address, an ephemeral IP will be created with this networkTier. If an AccessConfig with a valid external IP address is specified, it must match that of the networkTier associated with the Address resource owning that IP.
  final String networkTier;

  /// The public DNS domain name for the instance.
  final String publicDnsName;

  /// The DNS domain name for the public PTR record. You can set this field only if the `setPublicPtr` field is enabled in accessConfig. If this field is unspecified in ipv6AccessConfig, a default PTR record will be createc for first IP in associated external IPv6 range.
  final String publicPtrDomainName;

  /// The resource URL for the security policy associated with this access config.
  final String securityPolicy;

  /// Specifies whether a public DNS 'A' record should be created for the external IP address of this access configuration.
  final bool setPublicDns;

  /// Specifies whether a public DNS 'PTR' record should be created to map the external IP address of the instance to a DNS domain name. This field is not used in ipv6AccessConfig. A default PTR record will be created if the VM has external IPv6 range associated.
  final bool setPublicPtr;

  /// The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
  final String type;

  /// Creates a new [AccessConfigResponse].
  /// [externalIpv6] Applies to ipv6AccessConfigs only. The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  /// [externalIpv6PrefixLength] Applies to ipv6AccessConfigs only. The prefix length of the external IPv6 range.
  /// [kind] Type of the resource. Always compute#accessConfig for access configs.
  /// [name] The name of this access configuration. In accessConfigs (IPv4), the default and recommended name is External NAT, but you can use any arbitrary string, such as My external IP or Network Access. In ipv6AccessConfigs, the recommend name is External IPv6.
  /// [natIP] Applies to accessConfigs (IPv4) only. An external IP address associated with this instance. Specify an unused static external IP address available to the project or leave this field undefined to use an IP from a shared ephemeral IP address pool. If you specify a static external IP address, it must live in the same region as the zone of the instance.
  /// [networkTier] This signifies the networking tier used for configuring this access configuration and can only take the following values: PREMIUM, STANDARD. If an AccessConfig is specified without a valid external IP address, an ephemeral IP will be created with this networkTier. If an AccessConfig with a valid external IP address is specified, it must match that of the networkTier associated with the Address resource owning that IP.
  /// [publicDnsName] The public DNS domain name for the instance.
  /// [publicPtrDomainName] The DNS domain name for the public PTR record. You can set this field only if the `setPublicPtr` field is enabled in accessConfig. If this field is unspecified in ipv6AccessConfig, a default PTR record will be createc for first IP in associated external IPv6 range.
  /// [securityPolicy] The resource URL for the security policy associated with this access config.
  /// [setPublicDns] Specifies whether a public DNS 'A' record should be created for the external IP address of this access configuration.
  /// [setPublicPtr] Specifies whether a public DNS 'PTR' record should be created to map the external IP address of the instance to a DNS domain name. This field is not used in ipv6AccessConfig. A default PTR record will be created if the VM has external IPv6 range associated.
  /// [type] The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
  AccessConfigResponse({
    required this.externalIpv6,
    required this.externalIpv6PrefixLength,
    required this.kind,
    required this.name,
    required this.natIP,
    required this.networkTier,
    required this.publicDnsName,
    required this.publicPtrDomainName,
    required this.securityPolicy,
    required this.setPublicDns,
    required this.setPublicPtr,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpv6': externalIpv6,
      'externalIpv6PrefixLength': externalIpv6PrefixLength,
      'kind': kind,
      'name': name,
      'natIP': natIP,
      'networkTier': networkTier,
      'publicDnsName': publicDnsName,
      'publicPtrDomainName': publicPtrDomainName,
      'securityPolicy': securityPolicy,
      'setPublicDns': setPublicDns,
      'setPublicPtr': setPublicPtr,
      'type': type,
    };
  }

  factory AccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponse(
      externalIpv6: map['externalIpv6'] as String,
      externalIpv6PrefixLength: map['externalIpv6PrefixLength'] as int,
      kind: map['kind'] as String,
      name: map['name'] as String,
      natIP: map['natIP'] as String,
      networkTier: map['networkTier'] as String,
      publicDnsName: map['publicDnsName'] as String,
      publicPtrDomainName: map['publicPtrDomainName'] as String,
      securityPolicy: map['securityPolicy'] as String,
      setPublicDns: map['setPublicDns'] as bool,
      setPublicPtr: map['setPublicPtr'] as bool,
      type: map['type'] as String,
    );
  }
}
