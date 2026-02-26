// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_core_network_policy_document_core_network_configuration_edge_location/get_core_network_policy_document_core_network_configuration_edge_location.dart';

class GetCoreNetworkPolicyDocumentCoreNetworkConfiguration {
  /// List of strings containing Autonomous System Numbers (ASNs) to assign to Core Network Edges. By default, the core network automatically assigns an ASN for each Core Network Edge but you can optionally define the ASN in the edge-locations for each Region. The ASN uses an array of integer ranges only from <span pulumi-lang-nodejs="`64512`" pulumi-lang-dotnet="`64512`" pulumi-lang-go="`64512`" pulumi-lang-python="`64512`" pulumi-lang-yaml="`64512`" pulumi-lang-java="`64512`">`64512`</span> to <span pulumi-lang-nodejs="`65534`" pulumi-lang-dotnet="`65534`" pulumi-lang-go="`65534`" pulumi-lang-python="`65534`" pulumi-lang-yaml="`65534`" pulumi-lang-java="`65534`">`65534`</span> and <span pulumi-lang-nodejs="`4200000000`" pulumi-lang-dotnet="`4200000000`" pulumi-lang-go="`4200000000`" pulumi-lang-python="`4200000000`" pulumi-lang-yaml="`4200000000`" pulumi-lang-java="`4200000000`">`4200000000`</span> to <span pulumi-lang-nodejs="`4294967294`" pulumi-lang-dotnet="`4294967294`" pulumi-lang-go="`4294967294`" pulumi-lang-python="`4294967294`" pulumi-lang-yaml="`4294967294`" pulumi-lang-java="`4294967294`">`4294967294`</span> expressed as a string like `"64512-65534"`. No other ASN ranges can be used.
  final List<String> asnRanges;

  /// Indicates whether DNS resolution is enabled for the core network. The value can be either <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, DNS resolution is enabled for VPCs attached to the core network, allowing resources in different VPCs to resolve each other's domain names. The default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? dnsSupport;

  /// A block value of AWS Region locations where you're creating Core Network Edges. Detailed below.
  final List<GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation>
      edgeLocations;

  /// The Classless Inter-Domain Routing (CIDR) block range used to create tunnels for AWS Transit Gateway Connect. The format is standard AWS CIDR range (for example, `10.0.1.0/24`). You can optionally define the inside CIDR in the Core Network Edges section per Region. The minimum is a `/24` for IPv4 or `/64` for IPv6. You can provide multiple `/24` subnets or a larger CIDR range. If you define a larger CIDR range, new Core Network Edges will be automatically assigned `/24` and `/64` subnets from the larger CIDR. an Inside CIDR block is required for attaching Connect attachments to a Core Network Edge.
  final List<String>? insideCidrBlocks;

  /// — (Optional) Indicates whether security group referencing is enabled for the core network. The value can be either <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, security groups in one VPC can reference security groups in another VPC attached to the core network, enabling more flexible security configurations across your network. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? securityGroupReferencingSupport;

  /// Indicates whether the core network forwards traffic over multiple equal-cost routes using VPN. The value can be either <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. The default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? vpnEcmpSupport;

  GetCoreNetworkPolicyDocumentCoreNetworkConfiguration({
    required this.asnRanges,
    this.dnsSupport,
    required this.edgeLocations,
    this.insideCidrBlocks,
    this.securityGroupReferencingSupport,
    this.vpnEcmpSupport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['asnRanges'] = asnRanges;
    final dnsSupportValue = dnsSupport;
    if (dnsSupportValue != null) {
      map['dnsSupport'] = dnsSupportValue;
    }
    map['edgeLocations'] = Input.encodeList<
        GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation,
        Map<String, dynamic>>(edgeLocations, (value) => value.toMap());
    final insideCidrBlocksValue = insideCidrBlocks;
    if (insideCidrBlocksValue != null) {
      map['insideCidrBlocks'] = insideCidrBlocksValue;
    }
    final securityGroupReferencingSupportValue =
        securityGroupReferencingSupport;
    if (securityGroupReferencingSupportValue != null) {
      map['securityGroupReferencingSupport'] =
          securityGroupReferencingSupportValue;
    }
    final vpnEcmpSupportValue = vpnEcmpSupport;
    if (vpnEcmpSupportValue != null) {
      map['vpnEcmpSupport'] = vpnEcmpSupportValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentCoreNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentCoreNetworkConfiguration(
      asnRanges: (map['asnRanges'] as List).cast<String>(),
      dnsSupport: map['dnsSupport'] == null ? null : map['dnsSupport'] as bool,
      edgeLocations: Input.decodeList<
              GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation>(
          map['edgeLocations'],
          (value) =>
              GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
      insideCidrBlocks: map['insideCidrBlocks'] == null
          ? null
          : (map['insideCidrBlocks'] as List).cast<String>(),
      securityGroupReferencingSupport:
          map['securityGroupReferencingSupport'] == null
              ? null
              : map['securityGroupReferencingSupport'] as bool,
      vpnEcmpSupport:
          map['vpnEcmpSupport'] == null ? null : map['vpnEcmpSupport'] as bool,
    );
  }
}
