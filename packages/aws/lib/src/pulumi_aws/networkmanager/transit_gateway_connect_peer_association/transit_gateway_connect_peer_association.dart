import 'package:pulumi/pulumi.dart';
import 'transit_gateway_connect_peer_association_args.dart';

/// Manages a Network Manager transit gateway Connect peer association. Associates a transit gateway Connect peer with a device, and optionally, with a link. If you specify a link, it must be associated with the specified device.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.TransitGatewayConnectPeerAssociation` using the global network ID and Connect peer ARN. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayConnectPeerAssociation:TransitGatewayConnectPeerAssociation example global-network-0d47f6t230mz46dy4,arn:aws:ec2:us-west-2:123456789012:transit-gateway-connect-peer/tgw-connect-peer-12345678
/// ```
class TransitGatewayConnectPeerAssociation extends CustomResource {
  /// ID of the device.
  late final Output<String> deviceId;

  /// ID of the global network.
  late final Output<String> globalNetworkId;

  /// ID of the link.
  late final Output<String?> linkId;

  /// ARN of the Connect peer.
  ///
  /// The following arguments are optional:
  late final Output<String> transitGatewayConnectPeerArn;

  TransitGatewayConnectPeerAssociation(
    String name, {
    TransitGatewayConnectPeerAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayConnectPeerAssociation:TransitGatewayConnectPeerAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deviceId = registerOutput<String>('deviceId');
    this.globalNetworkId = registerOutput<String>('globalNetworkId');
    this.linkId = registerOutput<String?>('linkId');
    this.transitGatewayConnectPeerArn =
        registerOutput<String>('transitGatewayConnectPeerArn');
  }
}
