// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_connect_peer_connect_peer_args_doc}
/// The set of arguments for ConnectPeer.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_connect_peer_connect_peer_args_doc}
class ConnectPeerArgs {
  /// The BGP ASN number assigned customer device. If not provided, it will use the same BGP ASN as is associated with Transit Gateway.
  final pulumi.Input<String?>? bgpAsn;
  /// The CIDR block that will be used for addressing within the tunnel. It must contain exactly one IPv4 CIDR block and up to one IPv6 CIDR block. The IPv4 CIDR block must be /29 size and must be within 169.254.0.0/16 range, with exception of: 169.254.0.0/29, 169.254.1.0/29, 169.254.2.0/29, 169.254.3.0/29, 169.254.4.0/29, 169.254.5.0/29, 169.254.169.248/29. The IPv6 CIDR block must be /125 size and must be within fd00::/8. The first IP from each CIDR block is assigned for customer gateway, the second and third is for Transit Gateway (An example: from range 169.254.100.0/29, .1 is assigned to customer gateway and .2 and .3 are assigned to Transit Gateway)
  final pulumi.Input<List<String>> insideCidrBlocks;
  /// The IP addressed assigned to customer device, which will be used as tunnel endpoint. It can be IPv4 or IPv6 address, but must be the same address family as `transitGatewayAddress`
  final pulumi.Input<String> peerAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value tags for the EC2 Transit Gateway Connect Peer. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The IP address assigned to Transit Gateway, which will be used as tunnel endpoint. This address must be from associated Transit Gateway CIDR block. The address must be from the same address family as `peerAddress`. If not set explicitly, it will be selected from associated Transit Gateway CIDR blocks
  final pulumi.Input<String?>? transitGatewayAddress;
  /// The Transit Gateway Connect
  final pulumi.Input<String> transitGatewayAttachmentId;

  /// Creates a new [ConnectPeerArgs].
  /// [bgpAsn] The BGP ASN number assigned customer device. If not provided, it will use the same BGP ASN as is associated with Transit Gateway.
  /// [insideCidrBlocks] The CIDR block that will be used for addressing within the tunnel. It must contain exactly one IPv4 CIDR block and up to one IPv6 CIDR block. The IPv4 CIDR block must be /29 size and must be within 169.254.0.0/16 range, with exception of: 169.254.0.0/29, 169.254.1.0/29, 169.254.2.0/29, 169.254.3.0/29, 169.254.4.0/29, 169.254.5.0/29, 169.254.169.248/29. The IPv6 CIDR block must be /125 size and must be within fd00::/8. The first IP from each CIDR block is assigned for customer gateway, the second and third is for Transit Gateway (An example: from range 169.254.100.0/29, .1 is assigned to customer gateway and .2 and .3 are assigned to Transit Gateway)
  /// [peerAddress] The IP addressed assigned to customer device, which will be used as tunnel endpoint. It can be IPv4 or IPv6 address, but must be the same address family as `transitGatewayAddress`
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect Peer. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayAddress] The IP address assigned to Transit Gateway, which will be used as tunnel endpoint. This address must be from associated Transit Gateway CIDR block. The address must be from the same address family as `peerAddress`. If not set explicitly, it will be selected from associated Transit Gateway CIDR blocks
  /// [transitGatewayAttachmentId] The Transit Gateway Connect
  const ConnectPeerArgs({
    this.bgpAsn,
    required this.insideCidrBlocks,
    required this.peerAddress,
    this.region,
    this.tags,
    this.transitGatewayAddress,
    required this.transitGatewayAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpAsn': ?bgpAsn,
      'insideCidrBlocks': insideCidrBlocks,
      'peerAddress': peerAddress,
      'region': ?region,
      'tags': ?tags,
      'transitGatewayAddress': ?transitGatewayAddress,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
    };
  }

  factory ConnectPeerArgs.fromMap(Map<String, dynamic> map) {
    return ConnectPeerArgs(
      bgpAsn: (() { final guardedValue = map['bgpAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      insideCidrBlocks: pulumi.Input.fromValue((map['insideCidrBlocks'] as List).cast<String>()),
      peerAddress: pulumi.Input.fromValue(map['peerAddress'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayAddress: (() { final guardedValue = map['transitGatewayAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayAttachmentId: pulumi.Input.fromValue(map['transitGatewayAttachmentId'] as String),
    );
  }
}
