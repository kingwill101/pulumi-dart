// ignore_for_file: unused_element, unnecessary_cast

class GetVpcEndpointDnsOption {
  /// The DNS records created for the endpoint.
  final String dnsRecordIpType;

  /// Indicates whether to enable private DNS only for inbound endpoints.
  final bool privateDnsOnlyForInboundResolverEndpoint;

  /// Preference for which private domains have a private hosted zone created for and associated with the specified VPC.
  final String privateDnsPreference;

  /// List of private domains to create private hosted zones for and associate with the specified VPC.
  final List<String> privateDnsSpecifiedDomains;

  GetVpcEndpointDnsOption({
    required this.dnsRecordIpType,
    required this.privateDnsOnlyForInboundResolverEndpoint,
    required this.privateDnsPreference,
    required this.privateDnsSpecifiedDomains,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsRecordIpType'] = dnsRecordIpType;
    map['privateDnsOnlyForInboundResolverEndpoint'] =
        privateDnsOnlyForInboundResolverEndpoint;
    map['privateDnsPreference'] = privateDnsPreference;
    map['privateDnsSpecifiedDomains'] = privateDnsSpecifiedDomains;
    return map;
  }

  factory GetVpcEndpointDnsOption.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointDnsOption(
      dnsRecordIpType: map['dnsRecordIpType'] as String,
      privateDnsOnlyForInboundResolverEndpoint:
          map['privateDnsOnlyForInboundResolverEndpoint'] as bool,
      privateDnsPreference: map['privateDnsPreference'] as String,
      privateDnsSpecifiedDomains:
          (map['privateDnsSpecifiedDomains'] as List).cast<String>(),
    );
  }
}
