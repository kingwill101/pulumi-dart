// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointDnsOption {
  /// The DNS records created for the endpoint.
  final pulumi.Input<String> dnsRecordIpType;
  /// Indicates whether to enable private DNS only for inbound endpoints.
  final pulumi.Input<bool> privateDnsOnlyForInboundResolverEndpoint;
  /// Preference for which private domains have a private hosted zone created for and associated with the specified VPC.
  final pulumi.Input<String> privateDnsPreference;
  /// List of private domains to create private hosted zones for and associate with the specified VPC.
  final pulumi.Input<List<String>> privateDnsSpecifiedDomains;

  /// Creates a new [GetVpcEndpointDnsOption].
  /// [dnsRecordIpType] The DNS records created for the endpoint.
  /// [privateDnsOnlyForInboundResolverEndpoint] Indicates whether to enable private DNS only for inbound endpoints.
  /// [privateDnsPreference] Preference for which private domains have a private hosted zone created for and associated with the specified VPC.
  /// [privateDnsSpecifiedDomains] List of private domains to create private hosted zones for and associate with the specified VPC.
  const GetVpcEndpointDnsOption({
    required this.dnsRecordIpType,
    required this.privateDnsOnlyForInboundResolverEndpoint,
    required this.privateDnsPreference,
    required this.privateDnsSpecifiedDomains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsRecordIpType': dnsRecordIpType,
      'privateDnsOnlyForInboundResolverEndpoint': privateDnsOnlyForInboundResolverEndpoint,
      'privateDnsPreference': privateDnsPreference,
      'privateDnsSpecifiedDomains': privateDnsSpecifiedDomains,
    };
  }

  factory GetVpcEndpointDnsOption.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointDnsOption(
      dnsRecordIpType: pulumi.Input.fromValue(map['dnsRecordIpType'] as String),
      privateDnsOnlyForInboundResolverEndpoint: pulumi.Input.fromValue(map['privateDnsOnlyForInboundResolverEndpoint'] as bool),
      privateDnsPreference: pulumi.Input.fromValue(map['privateDnsPreference'] as String),
      privateDnsSpecifiedDomains: pulumi.Input.fromValue((map['privateDnsSpecifiedDomains'] as List).cast<String>()),
    );
  }
}

