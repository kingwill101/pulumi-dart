// ignore_for_file: unused_element, unnecessary_cast

import 'access_config_network_tier_compute_v1.dart';
import 'access_config_type_compute_v1.dart';

/// An access configuration attached to an instance's network interface. Only one access config per instance is supported.
class AccessConfigComputeV1 {
  /// Applies to ipv6AccessConfigs only. The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  final String? externalIpv6;

  /// Applies to ipv6AccessConfigs only. The prefix length of the external IPv6 range.
  final int? externalIpv6PrefixLength;

  /// The name of this access configuration. In accessConfigs (IPv4), the default and recommended name is External NAT, but you can use any arbitrary string, such as My external IP or Network Access. In ipv6AccessConfigs, the recommend name is External IPv6.
  final String? name;

  /// Applies to accessConfigs (IPv4) only. An external IP address associated with this instance. Specify an unused static external IP address available to the project or leave this field undefined to use an IP from a shared ephemeral IP address pool. If you specify a static external IP address, it must live in the same region as the zone of the instance.
  final String? natIP;

  /// This signifies the networking tier used for configuring this access configuration and can only take the following values: PREMIUM, STANDARD. If an AccessConfig is specified without a valid external IP address, an ephemeral IP will be created with this networkTier. If an AccessConfig with a valid external IP address is specified, it must match that of the networkTier associated with the Address resource owning that IP.
  final AccessConfigNetworkTierComputeV1? networkTier;

  /// The DNS domain name for the public PTR record. You can set this field only if the `setPublicPtr` field is enabled in accessConfig. If this field is unspecified in ipv6AccessConfig, a default PTR record will be createc for first IP in associated external IPv6 range.
  final String? publicPtrDomainName;

  /// Specifies whether a public DNS 'PTR' record should be created to map the external IP address of the instance to a DNS domain name. This field is not used in ipv6AccessConfig. A default PTR record will be created if the VM has external IPv6 range associated.
  final bool? setPublicPtr;

  /// The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
  final AccessConfigTypeComputeV1? type;

  /// Creates a new [AccessConfigComputeV1].
  /// [externalIpv6] Applies to ipv6AccessConfigs only. The first IPv6 address of the external IPv6 range associated with this instance, prefix length is stored in externalIpv6PrefixLength in ipv6AccessConfig. To use a static external IP address, it must be unused and in the same region as the instance's zone. If not specified, Google Cloud will automatically assign an external IPv6 address from the instance's subnetwork.
  /// [externalIpv6PrefixLength] Applies to ipv6AccessConfigs only. The prefix length of the external IPv6 range.
  /// [name] The name of this access configuration. In accessConfigs (IPv4), the default and recommended name is External NAT, but you can use any arbitrary string, such as My external IP or Network Access. In ipv6AccessConfigs, the recommend name is External IPv6.
  /// [natIP] Applies to accessConfigs (IPv4) only. An external IP address associated with this instance. Specify an unused static external IP address available to the project or leave this field undefined to use an IP from a shared ephemeral IP address pool. If you specify a static external IP address, it must live in the same region as the zone of the instance.
  /// [networkTier] This signifies the networking tier used for configuring this access configuration and can only take the following values: PREMIUM, STANDARD. If an AccessConfig is specified without a valid external IP address, an ephemeral IP will be created with this networkTier. If an AccessConfig with a valid external IP address is specified, it must match that of the networkTier associated with the Address resource owning that IP.
  /// [publicPtrDomainName] The DNS domain name for the public PTR record. You can set this field only if the `setPublicPtr` field is enabled in accessConfig. If this field is unspecified in ipv6AccessConfig, a default PTR record will be createc for first IP in associated external IPv6 range.
  /// [setPublicPtr] Specifies whether a public DNS 'PTR' record should be created to map the external IP address of the instance to a DNS domain name. This field is not used in ipv6AccessConfig. A default PTR record will be created if the VM has external IPv6 range associated.
  /// [type] The type of configuration. In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT. In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
  AccessConfigComputeV1({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    this.natIP,
    this.networkTier,
    this.publicPtrDomainName,
    this.setPublicPtr,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIpv6': ?externalIpv6,
      'externalIpv6PrefixLength': ?externalIpv6PrefixLength,
      'name': ?name,
      'natIP': ?natIP,
      'networkTier': ?networkTier == null ? null : networkTier!.value,
      'publicPtrDomainName': ?publicPtrDomainName,
      'setPublicPtr': ?setPublicPtr,
      'type': ?type == null ? null : type!.value,
    };
  }

  factory AccessConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return AccessConfigComputeV1(
      externalIpv6: map['externalIpv6'] == null
          ? null
          : map['externalIpv6'] as String,
      externalIpv6PrefixLength: map['externalIpv6PrefixLength'] == null
          ? null
          : map['externalIpv6PrefixLength'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      natIP: map['natIP'] == null ? null : map['natIP'] as String,
      networkTier: map['networkTier'] == null
          ? null
          : AccessConfigNetworkTierComputeV1.fromValue(
              map['networkTier'] as String,
            ),
      publicPtrDomainName: map['publicPtrDomainName'] == null
          ? null
          : map['publicPtrDomainName'] as String,
      setPublicPtr: map['setPublicPtr'] == null
          ? null
          : map['setPublicPtr'] as bool,
      type: map['type'] == null
          ? null
          : AccessConfigTypeComputeV1.fromValue(map['type'] as String),
    );
  }
}
