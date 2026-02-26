// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ConnectPeer.
class ConnectPeerArgs {
  /// The BGP ASN number assigned customer device. If not provided, it will use the same BGP ASN as is associated with Transit Gateway.
  final Input<String>? bgpAsn;

  /// The CIDR block that will be used for addressing within the tunnel. It must contain exactly one IPv4 CIDR block and up to one IPv6 CIDR block. The IPv4 CIDR block must be /29 size and must be within 169.254.0.0/16 range, with exception of: 169.254.0.0/29, 169.254.1.0/29, 169.254.2.0/29, 169.254.3.0/29, 169.254.4.0/29, 169.254.5.0/29, 169.254.169.248/29. The IPv6 CIDR block must be /125 size and must be within fd00::/8. The first IP from each CIDR block is assigned for customer gateway, the second and third is for Transit Gateway (An example: from range 169.254.100.0/29, .1 is assigned to customer gateway and .2 and .3 are assigned to Transit Gateway)
  final Input<List<String>> insideCidrBlocks;

  /// The IP addressed assigned to customer device, which will be used as tunnel endpoint. It can be IPv4 or IPv6 address, but must be the same address family as <span pulumi-lang-nodejs="`transitGatewayAddress`" pulumi-lang-dotnet="`TransitGatewayAddress`" pulumi-lang-go="`transitGatewayAddress`" pulumi-lang-python="`transit_gateway_address`" pulumi-lang-yaml="`transitGatewayAddress`" pulumi-lang-java="`transitGatewayAddress`">`transit_gateway_address`</span>
  final Input<String> peerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Connect Peer. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The IP address assigned to Transit Gateway, which will be used as tunnel endpoint. This address must be from associated Transit Gateway CIDR block. The address must be from the same address family as <span pulumi-lang-nodejs="`peerAddress`" pulumi-lang-dotnet="`PeerAddress`" pulumi-lang-go="`peerAddress`" pulumi-lang-python="`peer_address`" pulumi-lang-yaml="`peerAddress`" pulumi-lang-java="`peerAddress`">`peer_address`</span>. If not set explicitly, it will be selected from associated Transit Gateway CIDR blocks
  final Input<String>? transitGatewayAddress;

  /// The Transit Gateway Connect
  final Input<String> transitGatewayAttachmentId;

  ConnectPeerArgs({
    this.bgpAsn,
    required this.insideCidrBlocks,
    required this.peerAddress,
    this.region,
    this.tags,
    this.transitGatewayAddress,
    required this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bgpAsnValue = bgpAsn;
    if (bgpAsnValue != null) {
      map['bgpAsn'] = bgpAsnValue;
    }
    map['insideCidrBlocks'] = insideCidrBlocks;
    map['peerAddress'] = peerAddress;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayAddressValue = transitGatewayAddress;
    if (transitGatewayAddressValue != null) {
      map['transitGatewayAddress'] = transitGatewayAddressValue;
    }
    map['transitGatewayAttachmentId'] = transitGatewayAttachmentId;
    return map;
  }

  factory ConnectPeerArgs.fromMap(Map<String, dynamic> map) {
    return ConnectPeerArgs(
      bgpAsn: Input.asOptionalInput<String>(map['bgpAsn']),
      insideCidrBlocks: Input.asInput<List<String>>(map['insideCidrBlocks']),
      peerAddress: Input.asInput<String>(map['peerAddress']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayAddress:
          Input.asOptionalInput<String>(map['transitGatewayAddress']),
      transitGatewayAttachmentId:
          Input.asInput<String>(map['transitGatewayAttachmentId']),
    );
  }
}
