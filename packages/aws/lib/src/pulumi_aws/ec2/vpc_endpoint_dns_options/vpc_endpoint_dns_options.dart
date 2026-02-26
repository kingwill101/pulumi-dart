// ignore_for_file: unused_element, unnecessary_cast

class VpcEndpointDnsOptions {
  /// The DNS records created for the endpoint. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, `service-defined`, and <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  final String? dnsRecordIpType;

  /// Boolean indicating whether to enable private DNS only for inbound endpoints. This option is available only for interface endpoints of services that support both gateway and interface endpoints. A gateway endpoint for the same service must be created before an interface endpoint is created. Traffic originating from the VPC is routed to the gateway endpoint, while traffic originating from on-premises is routed to the interface endpoint. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. This argument can be specified only if <span pulumi-lang-nodejs="`privateDnsEnabled`" pulumi-lang-dotnet="`PrivateDnsEnabled`" pulumi-lang-go="`privateDnsEnabled`" pulumi-lang-python="`private_dns_enabled`" pulumi-lang-yaml="`privateDnsEnabled`" pulumi-lang-java="`privateDnsEnabled`">`private_dns_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? privateDnsOnlyForInboundResolverEndpoint;

  /// Preference for which private domains have a private hosted zone created for and associated with the specified VPC. Valid values are `ALL_DOMAINS`, `VERIFIED_DOMAINS_ONLY`, `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS`, and `SPECIFIED_DOMAINS_ONLY`. Only supported when <span pulumi-lang-nodejs="`privateDnsEnabled`" pulumi-lang-dotnet="`PrivateDnsEnabled`" pulumi-lang-go="`privateDnsEnabled`" pulumi-lang-python="`private_dns_enabled`" pulumi-lang-yaml="`privateDnsEnabled`" pulumi-lang-java="`privateDnsEnabled`">`private_dns_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and when the <span pulumi-lang-nodejs="`vpcEndpointType`" pulumi-lang-dotnet="`VpcEndpointType`" pulumi-lang-go="`vpcEndpointType`" pulumi-lang-python="`vpc_endpoint_type`" pulumi-lang-yaml="`vpcEndpointType`" pulumi-lang-java="`vpcEndpointType`">`vpc_endpoint_type`</span> is `ServiceNetwork` or `Resource`.
  final String? privateDnsPreference;

  /// List of private domains to create private hosted zones for and associate with the specified VPC. Must be specified when <span pulumi-lang-nodejs="`privateDnsEnabled`" pulumi-lang-dotnet="`PrivateDnsEnabled`" pulumi-lang-go="`privateDnsEnabled`" pulumi-lang-python="`private_dns_enabled`" pulumi-lang-yaml="`privateDnsEnabled`" pulumi-lang-java="`privateDnsEnabled`">`private_dns_enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and <span pulumi-lang-nodejs="`privateDnsPreference`" pulumi-lang-dotnet="`PrivateDnsPreference`" pulumi-lang-go="`privateDnsPreference`" pulumi-lang-python="`private_dns_preference`" pulumi-lang-yaml="`privateDnsPreference`" pulumi-lang-java="`privateDnsPreference`">`private_dns_preference`</span> is set to either `VERIFIED_DOMAINS_AND_SPECIFIED_DOMAINS` or `SPECIFIED_DOMAINS_ONLY`. In all other cases, this argument must not be specified.
  final List<String>? privateDnsSpecifiedDomains;

  VpcEndpointDnsOptions({
    this.dnsRecordIpType,
    this.privateDnsOnlyForInboundResolverEndpoint,
    this.privateDnsPreference,
    this.privateDnsSpecifiedDomains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dnsRecordIpTypeValue = dnsRecordIpType;
    if (dnsRecordIpTypeValue != null) {
      map['dnsRecordIpType'] = dnsRecordIpTypeValue;
    }
    final privateDnsOnlyForInboundResolverEndpointValue =
        privateDnsOnlyForInboundResolverEndpoint;
    if (privateDnsOnlyForInboundResolverEndpointValue != null) {
      map['privateDnsOnlyForInboundResolverEndpoint'] =
          privateDnsOnlyForInboundResolverEndpointValue;
    }
    final privateDnsPreferenceValue = privateDnsPreference;
    if (privateDnsPreferenceValue != null) {
      map['privateDnsPreference'] = privateDnsPreferenceValue;
    }
    final privateDnsSpecifiedDomainsValue = privateDnsSpecifiedDomains;
    if (privateDnsSpecifiedDomainsValue != null) {
      map['privateDnsSpecifiedDomains'] = privateDnsSpecifiedDomainsValue;
    }
    return map;
  }

  factory VpcEndpointDnsOptions.fromMap(Map<String, dynamic> map) {
    return VpcEndpointDnsOptions(
      dnsRecordIpType: map['dnsRecordIpType'] == null
          ? null
          : map['dnsRecordIpType'] as String,
      privateDnsOnlyForInboundResolverEndpoint:
          map['privateDnsOnlyForInboundResolverEndpoint'] == null
              ? null
              : map['privateDnsOnlyForInboundResolverEndpoint'] as bool,
      privateDnsPreference: map['privateDnsPreference'] == null
          ? null
          : map['privateDnsPreference'] as String,
      privateDnsSpecifiedDomains: map['privateDnsSpecifiedDomains'] == null
          ? null
          : (map['privateDnsSpecifiedDomains'] as List).cast<String>(),
    );
  }
}
