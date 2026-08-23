import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_transit_gateway_attachment_accepter_args.dart';
import 'firewall_transit_gateway_attachment_accepter_state.dart';
import 'firewall_transit_gateway_attachment_accepter_timeouts.dart';

/// Manages an AWS Network Firewall Firewall Transit Gateway Attachment Accepter.
///
/// When a cross-account (requester's AWS account differs from the accepter's AWS account) requester creates a Network Firewall with Transit Gateway ID using `aws.networkfirewall.Firewall`. Then an EC2 Transit Gateway VPC Attachment resource is automatically created in the accepter's account.
/// The accepter can use the `aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter` resource to "adopt" its side of the connection into management.
///
/// &gt; **NOTE:** If the `transitGatewayId` argument in the `aws.networkfirewall.Firewall` resource is used to attach a firewall to a transit gateway in a cross-account setup (where **Auto accept shared attachments** is disabled), the resource will be considered created when the transit gateway attachment is in the *Pending Acceptance* state and the firewall is in the *Provisioning* status. At this point, you can use the `aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter` resource to finalize the network firewall deployment. Once the transit gateway attachment reaches the *Available* state, the firewall status *Ready*.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter("example", {transitGatewayAttachmentId: exampleAwsNetworkfirewallFirewall.firewallStatus[0].transitGatewayAttachmentSyncState[0].attachmentId});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter("example", transit_gateway_attachment_id=example_aws_networkfirewall_firewall["firewallStatus"][0]["transitGatewayAttachmentSyncState"][0]["attachmentId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.FirewallTransitGatewayAttachmentAccepter("example", new()
///     {
///         TransitGatewayAttachmentId = exampleAwsNetworkfirewallFirewall.FirewallStatus[0].TransitGatewayAttachmentSyncState[0].AttachmentId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewFirewallTransitGatewayAttachmentAccepter(ctx, "example", &networkfirewall.FirewallTransitGatewayAttachmentAccepterArgs{
/// 			TransitGatewayAttachmentId: pulumi.Any(exampleAwsNetworkfirewallFirewall.FirewallStatus[0].TransitGatewayAttachmentSyncState[0].AttachmentId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_networkfirewall_firewalltransitgatewayattachmentaccepter" "example" {
///   transit_gateway_attachment_id = exampleAwsNetworkfirewallFirewall.firewallStatus[0].transitGatewayAttachmentSyncState[0].attachmentId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter;
/// import com.pulumi.aws.networkfirewall.FirewallTransitGatewayAttachmentAccepterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new FirewallTransitGatewayAttachmentAccepter("example", FirewallTransitGatewayAttachmentAccepterArgs.builder()
///             .transitGatewayAttachmentId(exampleAwsNetworkfirewallFirewall.firewallStatus()[0].transitGatewayAttachmentSyncState()[0].attachmentId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:FirewallTransitGatewayAttachmentAccepter
///     properties:
///       transitGatewayAttachmentId: ${exampleAwsNetworkfirewallFirewall.firewallStatus[0].transitGatewayAttachmentSyncState[0].attachmentId}
/// ```
///
///
/// A full example of how to create a Transit Gateway in one AWS account, share it with a second AWS account, and create Network Firewall in the second account to the Transit Gateway via the `aws.networkfirewall.Firewall` and `aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter` resources can be found in the `./examples/network-firewall-cross-account-transit-gateway` directory within the Github Repository
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Firewall Transit Gateway Attachment Accepter using the `transitGatewayAttachmentId`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/firewallTransitGatewayAttachmentAccepter:FirewallTransitGatewayAttachmentAccepter example tgw-attach-0c3b7e9570eee089c
/// ```
class FirewallTransitGatewayAttachmentAccepter extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<FirewallTransitGatewayAttachmentAccepterTimeouts?> timeouts;
  /// The unique identifier of the transit gateway attachment to accept. This ID is returned in the response when creating a transit gateway-attached firewall.
  late final pulumi.Output<String> transitGatewayAttachmentId;

  /// Creates a new [FirewallTransitGatewayAttachmentAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallTransitGatewayAttachmentAccepter]. {@macro pulumi_networkfirewall_firewall_transit_gateway_attachment_accepter_firewall_transit_gateway_attachment_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallTransitGatewayAttachmentAccepter(
    String name, {
    FirewallTransitGatewayAttachmentAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/firewallTransitGatewayAttachmentAccepter:FirewallTransitGatewayAttachmentAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    timeouts = registerOutput<FirewallTransitGatewayAttachmentAccepterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallTransitGatewayAttachmentAccepterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayAttachmentId = registerOutput<String>('transitGatewayAttachmentId');
  }

  /// Gets an existing [FirewallTransitGatewayAttachmentAccepter] resource's state with the given [name] and [id].
  static FirewallTransitGatewayAttachmentAccepter get(
    String name,
    pulumi.Input<String> id, {
    FirewallTransitGatewayAttachmentAccepterState? state,
  }) {
    return FirewallTransitGatewayAttachmentAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallTransitGatewayAttachmentAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/firewallTransitGatewayAttachmentAccepter:FirewallTransitGatewayAttachmentAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    timeouts = registerOutput<FirewallTransitGatewayAttachmentAccepterTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallTransitGatewayAttachmentAccepterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitGatewayAttachmentId = registerOutput<String>('transitGatewayAttachmentId');
  }
}
