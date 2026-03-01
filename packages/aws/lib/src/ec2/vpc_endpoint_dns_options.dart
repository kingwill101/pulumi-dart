// ignore_for_file: unused_element, unnecessary_cast


class VpcEndpointDnsOptions {
  /// The DNS records created for the endpoint. Valid values are `ipv4`, `dualstack`, `service-defined`, and `ipv6`.
  final String? dnsRecordIpType;
  /// Boolean indicating whether to enable private DNS only for inbound endpoints. This option is available only for interface endpoints of services that support both gateway and interface endpoints. A gateway endpoint for the same service must be created before an interface endpoint is created. Traffic originating from the VPC is routed to the gateway endpoint, while traffic originating from on-premises is routed to the interface endpoint. Defaults to `false`. This argument can be specified only if `private_dns_enabled` is `true`.
  final bool? privateDnsOnlyForInboundResolverEndpoint;
  /// Preference for which private domains have a private hosted zone created for and associated with the specified VPC. Valid values are `ALL_DOMAINS`, `VERIFIED_DOMAINS_ONLY`, `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS`, and `SPECIFIED_DOMAINS_ONLY`. Only supported when `private_dns_enabled` is `true` and when the `vpc_endpoint_type` is `ServiceNetwork` or `Resource`.
  final String? privateDnsPreference;
  /// List of private domains to create private hosted zones for and associate with the specified VPC. Must be specified when `private_dns_enabled` is `true` and `private_dns_preference` is set to either `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` or `SPECIFIED_DOMAINS_ONLY`. In all other cases, this argument must not be specified.
  final List<String>? privateDnsSpecifiedDomains;

  /// Creates a new [VpcEndpointDnsOptions].
  /// [dnsRecordIpType] The DNS records created for the endpoint. Valid values are `ipv4`, `dualstack`, `service-defined`, and `ipv6`.
  /// [privateDnsOnlyForInboundResolverEndpoint] Boolean indicating whether to enable private DNS only for inbound endpoints. This option is available only for interface endpoints of services that support both gateway and interface endpoints. A gateway endpoint for the same service must be created before an interface endpoint is created. Traffic originating from the VPC is routed to the gateway endpoint, while traffic originating from on-premises is routed to the interface endpoint. Defaults to `false`. This argument can be specified only if `private_dns_enabled` is `true`.
  /// [privateDnsPreference] Preference for which private domains have a private hosted zone created for and associated with the specified VPC. Valid values are `ALL_DOMAINS`, `VERIFIED_DOMAINS_ONLY`, `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS`, and `SPECIFIED_DOMAINS_ONLY`. Only supported when `private_dns_enabled` is `true` and when the `vpc_endpoint_type` is `ServiceNetwork` or `Resource`.
  /// [privateDnsSpecifiedDomains] List of private domains to create private hosted zones for and associate with the specified VPC. Must be specified when `private_dns_enabled` is `true` and `private_dns_preference` is set to either `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` or `SPECIFIED_DOMAINS_ONLY`. In all other cases, this argument must not be specified.
  VpcEndpointDnsOptions({
    this.dnsRecordIpType,
    this.privateDnsOnlyForInboundResolverEndpoint,
    this.privateDnsPreference,
    this.privateDnsSpecifiedDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsRecordIpType': ?dnsRecordIpType,
      'privateDnsOnlyForInboundResolverEndpoint': ?privateDnsOnlyForInboundResolverEndpoint,
      'privateDnsPreference': ?privateDnsPreference,
      'privateDnsSpecifiedDomains': ?privateDnsSpecifiedDomains,
    };
  }

  factory VpcEndpointDnsOptions.fromMap(Map<String, dynamic> map) {
    return VpcEndpointDnsOptions(
      dnsRecordIpType: map['dnsRecordIpType'] == null ? null : map['dnsRecordIpType'] as String,
      privateDnsOnlyForInboundResolverEndpoint: map['privateDnsOnlyForInboundResolverEndpoint'] == null ? null : map['privateDnsOnlyForInboundResolverEndpoint'] as bool,
      privateDnsPreference: map['privateDnsPreference'] == null ? null : map['privateDnsPreference'] as String,
      privateDnsSpecifiedDomains: map['privateDnsSpecifiedDomains'] == null ? null : (map['privateDnsSpecifiedDomains'] as List).cast<String>(),
    );
  }
}

