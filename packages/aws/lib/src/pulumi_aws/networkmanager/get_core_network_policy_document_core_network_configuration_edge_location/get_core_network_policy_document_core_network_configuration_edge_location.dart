// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation {
  /// ASN of the Core Network Edge in an AWS Region. By default, the ASN will be a single integer automatically assigned from <span pulumi-lang-nodejs="`asnRanges`" pulumi-lang-dotnet="`AsnRanges`" pulumi-lang-go="`asnRanges`" pulumi-lang-python="`asn_ranges`" pulumi-lang-yaml="`asnRanges`" pulumi-lang-java="`asnRanges`">`asn_ranges`</span>
  final String? asn;

  /// The local CIDR blocks for this Core Network Edge for AWS Transit Gateway Connect attachments. By default, this CIDR block will be one or more optional IPv4 and IPv6 CIDR prefixes auto-assigned from <span pulumi-lang-nodejs="`insideCidrBlocks`" pulumi-lang-dotnet="`InsideCidrBlocks`" pulumi-lang-go="`insideCidrBlocks`" pulumi-lang-python="`inside_cidr_blocks`" pulumi-lang-yaml="`insideCidrBlocks`" pulumi-lang-java="`insideCidrBlocks`">`inside_cidr_blocks`</span>.
  final List<String>? insideCidrBlocks;
  final String location;

  GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation({
    this.asn,
    this.insideCidrBlocks,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asnValue = asn;
    if (asnValue != null) {
      map['asn'] = asnValue;
    }
    final insideCidrBlocksValue = insideCidrBlocks;
    if (insideCidrBlocksValue != null) {
      map['insideCidrBlocks'] = insideCidrBlocksValue;
    }
    map['location'] = location;
    return map;
  }

  factory GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation(
      asn: map['asn'] == null ? null : map['asn'] as String,
      insideCidrBlocks: map['insideCidrBlocks'] == null
          ? null
          : (map['insideCidrBlocks'] as List).cast<String>(),
      location: map['location'] as String,
    );
  }
}
