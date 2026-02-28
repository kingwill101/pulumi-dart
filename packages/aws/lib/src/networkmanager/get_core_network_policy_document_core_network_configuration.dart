// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_policy_document_core_network_configuration_edge_location.dart';

class GetCoreNetworkPolicyDocumentCoreNetworkConfiguration {
  /// List of strings containing Autonomous System Numbers (ASNs) to assign to Core Network Edges. By default, the core network automatically assigns an ASN for each Core Network Edge but you can optionally define the ASN in the edge-locations for each Region. The ASN uses an array of integer ranges only from `64512` to `65534` and `4200000000` to `4294967294` expressed as a string like `"64512-65534"`. No other ASN ranges can be used.
  final List<String> asnRanges;
  /// Indicates whether DNS resolution is enabled for the core network. The value can be either `true` or `false`. When set to `true`, DNS resolution is enabled for VPCs attached to the core network, allowing resources in different VPCs to resolve each other's domain names. The default is `true`.
  final bool? dnsSupport;
  /// A block value of AWS Region locations where you're creating Core Network Edges. Detailed below.
  final List<GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation> edgeLocations;
  /// The Classless Inter-Domain Routing (CIDR) block range used to create tunnels for AWS Transit Gateway Connect. The format is standard AWS CIDR range (for example, `10.0.1.0/24`). You can optionally define the inside CIDR in the Core Network Edges section per Region. The minimum is a `/24` for IPv4 or `/64` for IPv6. You can provide multiple `/24` subnets or a larger CIDR range. If you define a larger CIDR range, new Core Network Edges will be automatically assigned `/24` and `/64` subnets from the larger CIDR. an Inside CIDR block is required for attaching Connect attachments to a Core Network Edge.
  final List<String>? insideCidrBlocks;
  /// — (Optional) Indicates whether security group referencing is enabled for the core network. The value can be either `true` or `false`. When set to `true`, security groups in one VPC can reference security groups in another VPC attached to the core network, enabling more flexible security configurations across your network. The default is `false`.
  final bool? securityGroupReferencingSupport;
  /// Indicates whether the core network forwards traffic over multiple equal-cost routes using VPN. The value can be either `true` or `false`. The default is `true`.
  final bool? vpnEcmpSupport;

  /// Creates a new [GetCoreNetworkPolicyDocumentCoreNetworkConfiguration].
  /// [asnRanges] List of strings containing Autonomous System Numbers (ASNs) to assign to Core Network Edges. By default, the core network automatically assigns an ASN for each Core Network Edge but you can optionally define the ASN in the edge-locations for each Region. The ASN uses an array of integer ranges only from `64512` to `65534` and `4200000000` to `4294967294` expressed as a string like `"64512-65534"`. No other ASN ranges can be used.
  /// [dnsSupport] Indicates whether DNS resolution is enabled for the core network. The value can be either `true` or `false`. When set to `true`, DNS resolution is enabled for VPCs attached to the core network, allowing resources in different VPCs to resolve each other's domain names. The default is `true`.
  /// [edgeLocations] A block value of AWS Region locations where you're creating Core Network Edges. Detailed below.
  /// [insideCidrBlocks] The Classless Inter-Domain Routing (CIDR) block range used to create tunnels for AWS Transit Gateway Connect. The format is standard AWS CIDR range (for example, `10.0.1.0/24`). You can optionally define the inside CIDR in the Core Network Edges section per Region. The minimum is a `/24` for IPv4 or `/64` for IPv6. You can provide multiple `/24` subnets or a larger CIDR range. If you define a larger CIDR range, new Core Network Edges will be automatically assigned `/24` and `/64` subnets from the larger CIDR. an Inside CIDR block is required for attaching Connect attachments to a Core Network Edge.
  /// [securityGroupReferencingSupport] — (Optional) Indicates whether security group referencing is enabled for the core network. The value can be either `true` or `false`. When set to `true`, security groups in one VPC can reference security groups in another VPC attached to the core network, enabling more flexible security configurations across your network. The default is `false`.
  /// [vpnEcmpSupport] Indicates whether the core network forwards traffic over multiple equal-cost routes using VPN. The value can be either `true` or `false`. The default is `true`.
  GetCoreNetworkPolicyDocumentCoreNetworkConfiguration({
    required this.asnRanges,
    this.dnsSupport,
    required this.edgeLocations,
    this.insideCidrBlocks,
    this.securityGroupReferencingSupport,
    this.vpnEcmpSupport,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asnRanges': asnRanges,
      'dnsSupport': ?dnsSupport,
      'edgeLocations': pulumi.Input.encodeList<GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation, Map<String, dynamic>>(edgeLocations, (value) => value.toMap()),
      'insideCidrBlocks': ?insideCidrBlocks,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'vpnEcmpSupport': ?vpnEcmpSupport,
    };
  }

  factory GetCoreNetworkPolicyDocumentCoreNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentCoreNetworkConfiguration(
      asnRanges: (map['asnRanges'] as List).cast<String>(),
      dnsSupport: map['dnsSupport'] == null ? null : map['dnsSupport'] as bool,
      edgeLocations: pulumi.Input.decodeList<GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation>(map['edgeLocations'], (value) => GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation.fromMap((value as Map).cast<String, dynamic>())),
      insideCidrBlocks: map['insideCidrBlocks'] == null ? null : (map['insideCidrBlocks'] as List).cast<String>(),
      securityGroupReferencingSupport: map['securityGroupReferencingSupport'] == null ? null : map['securityGroupReferencingSupport'] as bool,
      vpnEcmpSupport: map['vpnEcmpSupport'] == null ? null : map['vpnEcmpSupport'] as bool,
    );
  }
}

