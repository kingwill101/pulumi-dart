import 'package:pulumi/pulumi.dart';
import '../firewall_transit_gateway_attachment_accepter_timeouts/firewall_transit_gateway_attachment_accepter_timeouts.dart';
import 'firewall_transit_gateway_attachment_accepter_args.dart';

/// Manages an AWS Network Firewall Firewall Transit Gateway Attachment Accepter.
///
/// When a cross-account (requester's AWS account differs from the accepter's AWS account) requester creates a Network Firewall with Transit Gateway ID using `aws.networkfirewall.Firewall`. Then an EC2 Transit Gateway VPC Attachment resource is automatically created in the accepter's account.
/// The accepter can use the `aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter` resource to "adopt" its side of the connection into management.
///
/// > **NOTE:** If the `transit_gateway_id` argument in the `aws.networkfirewall.Firewall` resource is used to attach a firewall to a transit gateway in a cross-account setup (where **Auto accept shared attachments** is disabled), the resource will be considered created when the transit gateway attachment is in the *Pending Acceptance* state and the firewall is in the *Provisioning* status. At this point, you can use the `aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter` resource to finalize the network firewall deployment. Once the transit gateway attachment reaches the *Available* state, the firewall status *Ready*.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// A full example of how to create a Transit Gateway in one AWS account, share it with a second AWS account, and create Network Firewall in the second account to the Transit Gateway via the `aws.networkfirewall.Firewall` and `aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter` resources can be found in the `./examples/network-firewall-cross-account-transit-gateway` directory within the Github Repository
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Firewall Transit Gateway Attachment Accepter using the `transit_gateway_attachment_id`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/firewallTransitGatewayAttachmentAccepter:FirewallTransitGatewayAttachmentAccepter example tgw-attach-0c3b7e9570eee089c
/// ```
class FirewallTransitGatewayAttachmentAccepter extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<FirewallTransitGatewayAttachmentAccepterTimeouts?> timeouts;

  /// The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.
  late final Output<String> transitGatewayAttachmentId;

  FirewallTransitGatewayAttachmentAccepter(
    String name, {
    FirewallTransitGatewayAttachmentAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/firewallTransitGatewayAttachmentAccepter:FirewallTransitGatewayAttachmentAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<FirewallTransitGatewayAttachmentAccepterTimeouts?>(
            'timeouts');
    this.transitGatewayAttachmentId =
        registerOutput<String>('transitGatewayAttachmentId');
  }
}
