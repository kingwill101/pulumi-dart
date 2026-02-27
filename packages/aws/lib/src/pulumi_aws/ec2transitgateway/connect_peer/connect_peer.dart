import 'package:pulumi/pulumi.dart';
import 'connect_peer_args.dart';

/// Manages an EC2 Transit Gateway Connect Peer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.ConnectPeer` using the EC2 Transit Gateway Connect Peer identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/connectPeer:ConnectPeer example tgw-connect-peer-12345678
/// ```
class ConnectPeer extends CustomResource {
  /// EC2 Transit Gateway Connect Peer ARN
  late final Output<String> arn;

  /// The BGP ASN number assigned customer device. If not provided, it will use the same BGP ASN as is associated with Transit Gateway.
  late final Output<String> bgpAsn;

  /// The IP address assigned to customer device, which is used as BGP IP address.
  late final Output<String> bgpPeerAddress;

  /// The IP addresses assigned to Transit Gateway, which are used as BGP IP addresses.
  late final Output<List<String>> bgpTransitGatewayAddresses;

  /// The CIDR block that will be used for addressing within the tunnel. It must contain exactly one IPv4 CIDR block and up to one IPv6 CIDR block. The IPv4 CIDR block must be /29 size and must be within 169.254.0.0/16 range, with exception of: 169.254.0.0/29, 169.254.1.0/29, 169.254.2.0/29, 169.254.3.0/29, 169.254.4.0/29, 169.254.5.0/29, 169.254.169.248/29. The IPv6 CIDR block must be /125 size and must be within fd00::/8. The first IP from each CIDR block is assigned for customer gateway, the second and third is for Transit Gateway (An example: from range 169.254.100.0/29, .1 is assigned to customer gateway and .2 and .3 are assigned to Transit Gateway)
  late final Output<List<String>> insideCidrBlocks;

  /// The IP addressed assigned to customer device, which will be used as tunnel endpoint. It can be IPv4 or IPv6 address, but must be the same address family as `transit_gateway_address`
  late final Output<String> peerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the EC2 Transit Gateway Connect Peer. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The IP address assigned to Transit Gateway, which will be used as tunnel endpoint. This address must be from associated Transit Gateway CIDR block. The address must be from the same address family as `peer_address`. If not set explicitly, it will be selected from associated Transit Gateway CIDR blocks
  late final Output<String> transitGatewayAddress;

  /// The Transit Gateway Connect
  late final Output<String> transitGatewayAttachmentId;

  ConnectPeer(
    String name, {
    ConnectPeerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/connectPeer:ConnectPeer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bgpAsn = registerOutput<String>('bgpAsn');
    this.bgpPeerAddress = registerOutput<String>('bgpPeerAddress');
    this.bgpTransitGatewayAddresses =
        registerOutput<List<String>>('bgpTransitGatewayAddresses');
    this.insideCidrBlocks = registerOutput<List<String>>('insideCidrBlocks');
    this.peerAddress = registerOutput<String>('peerAddress');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayAddress =
        registerOutput<String>('transitGatewayAddress');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
  }
}
