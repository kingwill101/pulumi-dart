// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConnectPeer resources.
class ConnectPeerState {
  /// EC2 Transit Gateway Connect Peer ARN
  final pulumi.Input<String>? arn;
  /// The BGP ASN number assigned customer device. If not provided, it will use the same BGP ASN as is associated with Transit Gateway.
  final pulumi.Input<String>? bgpAsn;
  /// The IP address assigned to customer device, which is used as BGP IP address.
  final pulumi.Input<String>? bgpPeerAddress;
  /// The IP addresses assigned to Transit Gateway, which are used as BGP IP addresses.
  final pulumi.Input<List<String>>? bgpTransitGatewayAddresses;
  /// The CIDR block that will be used for addressing within the tunnel. It must contain exactly one IPv4 CIDR block and up to one IPv6 CIDR block. The IPv4 CIDR block must be /29 size and must be within 169.254.0.0/16 range, with exception of: 169.254.0.0/29, 169.254.1.0/29, 169.254.2.0/29, 169.254.3.0/29, 169.254.4.0/29, 169.254.5.0/29, 169.254.169.248/29. The IPv6 CIDR block must be /125 size and must be within fd00::/8. The first IP from each CIDR block is assigned for customer gateway, the second and third is for Transit Gateway (An example: from range 169.254.100.0/29, .1 is assigned to customer gateway and .2 and .3 are assigned to Transit Gateway)
  final pulumi.Input<List<String>>? insideCidrBlocks;
  /// The IP addressed assigned to customer device, which will be used as tunnel endpoint. It can be IPv4 or IPv6 address, but must be the same address family as `transit_gateway_address`
  final pulumi.Input<String>? peerAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway Connect Peer. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The IP address assigned to Transit Gateway, which will be used as tunnel endpoint. This address must be from associated Transit Gateway CIDR block. The address must be from the same address family as `peer_address`. If not set explicitly, it will be selected from associated Transit Gateway CIDR blocks
  final pulumi.Input<String>? transitGatewayAddress;
  /// The Transit Gateway Connect
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Creates a new [ConnectPeerState].
  /// [arn] EC2 Transit Gateway Connect Peer ARN
  /// [bgpAsn] The BGP ASN number assigned customer device. If not provided, it will use the same BGP ASN as is associated with Transit Gateway.
  /// [bgpPeerAddress] The IP address assigned to customer device, which is used as BGP IP address.
  /// [bgpTransitGatewayAddresses] The IP addresses assigned to Transit Gateway, which are used as BGP IP addresses.
  /// [insideCidrBlocks] The CIDR block that will be used for addressing within the tunnel. It must contain exactly one IPv4 CIDR block and up to one IPv6 CIDR block. The IPv4 CIDR block must be /29 size and must be within 169.254.0.0/16 range, with exception of: 169.254.0.0/29, 169.254.1.0/29, 169.254.2.0/29, 169.254.3.0/29, 169.254.4.0/29, 169.254.5.0/29, 169.254.169.248/29. The IPv6 CIDR block must be /125 size and must be within fd00::/8. The first IP from each CIDR block is assigned for customer gateway, the second and third is for Transit Gateway (An example: from range 169.254.100.0/29, .1 is assigned to customer gateway and .2 and .3 are assigned to Transit Gateway)
  /// [peerAddress] The IP addressed assigned to customer device, which will be used as tunnel endpoint. It can be IPv4 or IPv6 address, but must be the same address family as `transit_gateway_address`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect Peer. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayAddress] The IP address assigned to Transit Gateway, which will be used as tunnel endpoint. This address must be from associated Transit Gateway CIDR block. The address must be from the same address family as `peer_address`. If not set explicitly, it will be selected from associated Transit Gateway CIDR blocks
  /// [transitGatewayAttachmentId] The Transit Gateway Connect
  ConnectPeerState({
    this.arn,
    this.bgpAsn,
    this.bgpPeerAddress,
    this.bgpTransitGatewayAddresses,
    this.insideCidrBlocks,
    this.peerAddress,
    this.region,
    this.tags,
    this.tagsAll,
    this.transitGatewayAddress,
    this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bgpAsn': ?bgpAsn,
      'bgpPeerAddress': ?bgpPeerAddress,
      'bgpTransitGatewayAddresses': ?bgpTransitGatewayAddresses,
      'insideCidrBlocks': ?insideCidrBlocks,
      'peerAddress': ?peerAddress,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayAddress': ?transitGatewayAddress,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
    };
  }

  factory ConnectPeerState.fromMap(Map<String, dynamic> map) {
    return ConnectPeerState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      bgpAsn: map['bgpAsn'] == null ? null : (map['bgpAsn'] as String).input(),
      bgpPeerAddress: map['bgpPeerAddress'] == null ? null : (map['bgpPeerAddress'] as String).input(),
      bgpTransitGatewayAddresses: map['bgpTransitGatewayAddresses'] == null ? null : ((map['bgpTransitGatewayAddresses'] as List).cast<String>()).input(),
      insideCidrBlocks: map['insideCidrBlocks'] == null ? null : ((map['insideCidrBlocks'] as List).cast<String>()).input(),
      peerAddress: map['peerAddress'] == null ? null : (map['peerAddress'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      transitGatewayAddress: map['transitGatewayAddress'] == null ? null : (map['transitGatewayAddress'] as String).input(),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : (map['transitGatewayAttachmentId'] as String).input(),
    );
  }
}

