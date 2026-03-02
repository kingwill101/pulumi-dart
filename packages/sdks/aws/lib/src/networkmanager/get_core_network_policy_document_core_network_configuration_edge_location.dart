// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation {
  /// ASN of the Core Network Edge in an AWS Region. By default, the ASN will be a single integer automatically assigned from `asn_ranges`
  final pulumi.Input<String>? asn;
  /// The local CIDR blocks for this Core Network Edge for AWS Transit Gateway Connect attachments. By default, this CIDR block will be one or more optional IPv4 and IPv6 CIDR prefixes auto-assigned from `inside_cidr_blocks`.
  final pulumi.Input<List<String>>? insideCidrBlocks;
  final pulumi.Input<String> location;

  /// Creates a new [GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation].
  /// [asn] ASN of the Core Network Edge in an AWS Region. By default, the ASN will be a single integer automatically assigned from `asn_ranges`
  /// [insideCidrBlocks] The local CIDR blocks for this Core Network Edge for AWS Transit Gateway Connect attachments. By default, this CIDR block will be one or more optional IPv4 and IPv6 CIDR prefixes auto-assigned from `inside_cidr_blocks`.
  /// [location] Required.
  GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation({
    this.asn,
    this.insideCidrBlocks,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'insideCidrBlocks': ?insideCidrBlocks,
      'location': location,
    };
  }

  factory GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation(
      asn: map['asn'] == null ? null : ((map['asn'] as String).input()).input(),
      insideCidrBlocks: map['insideCidrBlocks'] == null ? null : (((map['insideCidrBlocks'] as List).cast<String>()).input()).input(),
      location: (map['location'] as String).input(),
    );
  }
}

