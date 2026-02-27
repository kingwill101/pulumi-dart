import 'package:pulumi/pulumi.dart';
import 'transit_gateway_peering_args.dart';

/// Manages a Network Manager transit gateway peering connection. Creates a peering connection between an AWS Cloud WAN core network and an AWS Transit Gateway.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.TransitGatewayPeering` using the peering ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayPeering:TransitGatewayPeering example peering-444555aaabbb11223
/// ```
class TransitGatewayPeering extends CustomResource {
  /// Peering ARN.
  late final Output<String> arn;

  /// ARN of the core network.
  late final Output<String> coreNetworkArn;

  /// ID of a core network.
  late final Output<String> coreNetworkId;

  /// Edge location for the peer.
  late final Output<String> edgeLocation;

  /// ID of the account owner.
  late final Output<String> ownerAccountId;

  /// Type of peering. This will be `TRANSIT_GATEWAY`.
  late final Output<String> peeringType;

  /// Resource ARN of the peer.
  late final Output<String> resourceArn;

  /// Key-value tags for the peering. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the transit gateway for the peering request.
  ///
  /// The following arguments are optional:
  late final Output<String> transitGatewayArn;

  /// ID of the transit gateway peering attachment.
  late final Output<String> transitGatewayPeeringAttachmentId;

  TransitGatewayPeering(
    String name, {
    TransitGatewayPeeringArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayPeering:TransitGatewayPeering',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.peeringType = registerOutput<String>('peeringType');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayArn = registerOutput<String>('transitGatewayArn');
    this.transitGatewayPeeringAttachmentId =
        registerOutput<String>('transitGatewayPeeringAttachmentId');
  }
}
