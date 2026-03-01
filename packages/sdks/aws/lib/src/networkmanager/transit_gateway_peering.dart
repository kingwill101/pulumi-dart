import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_gateway_peering_args.dart';
import 'transit_gateway_peering_state.dart';

/// Manages a Network Manager transit gateway peering connection. Creates a peering connection between an AWS Cloud WAN core network and an AWS Transit Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.TransitGatewayPeering("example", {
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     transitGatewayArn: exampleAwsEc2TransitGateway.arn,
/// }, {
///     dependsOn: [
///         exampleAwsEc2TransitGatewayPolicyTable,
///         exampleAwsNetworkmanagerCoreNetworkPolicyAttachment,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.TransitGatewayPeering("example",
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     transit_gateway_arn=example_aws_ec2_transit_gateway["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_aws_ec2_transit_gateway_policy_table,
///             example_aws_networkmanager_core_network_policy_attachment,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.TransitGatewayPeering("example", new()
///     {
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         TransitGatewayArn = exampleAwsEc2TransitGateway.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsEc2TransitGatewayPolicyTable,
///             exampleAwsNetworkmanagerCoreNetworkPolicyAttachment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkmanager.NewTransitGatewayPeering(ctx, "example", &networkmanager.TransitGatewayPeeringArgs{
/// 			CoreNetworkId:     pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// 			TransitGatewayArn: pulumi.Any(exampleAwsEc2TransitGateway.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsEc2TransitGatewayPolicyTable,
/// 			exampleAwsNetworkmanagerCoreNetworkPolicyAttachment,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.TransitGatewayPeering;
/// import com.pulumi.aws.networkmanager.TransitGatewayPeeringArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new TransitGatewayPeering("example", TransitGatewayPeeringArgs.builder()
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .transitGatewayArn(exampleAwsEc2TransitGateway.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleAwsEc2TransitGatewayPolicyTable,
///                     exampleAwsNetworkmanagerCoreNetworkPolicyAttachment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkmanager:TransitGatewayPeering
///     properties:
///       coreNetworkId: ${exampleAwsccNetworkmanagerCoreNetwork.id}
///       transitGatewayArn: ${exampleAwsEc2TransitGateway.arn}
///     options:
///       dependsOn:
///         - ${exampleAwsEc2TransitGatewayPolicyTable}
///         - ${exampleAwsNetworkmanagerCoreNetworkPolicyAttachment}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.TransitGatewayPeering` using the peering ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayPeering:TransitGatewayPeering example peering-444555aaabbb11223
/// ```
class TransitGatewayPeering extends pulumi.CustomResource {
  /// Peering ARN.
  late final pulumi.Output<String> arn;
  /// ARN of the core network.
  late final pulumi.Output<String> coreNetworkArn;
  /// ID of a core network.
  late final pulumi.Output<String> coreNetworkId;
  /// Edge location for the peer.
  late final pulumi.Output<String> edgeLocation;
  /// ID of the account owner.
  late final pulumi.Output<String> ownerAccountId;
  /// Type of peering. This will be `TRANSIT_GATEWAY`.
  late final pulumi.Output<String> peeringType;
  /// Resource ARN of the peer.
  late final pulumi.Output<String> resourceArn;
  /// Key-value tags for the peering. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the transit gateway for the peering request.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> transitGatewayArn;
  /// ID of the transit gateway peering attachment.
  late final pulumi.Output<String> transitGatewayPeeringAttachmentId;

  /// Creates a new [TransitGatewayPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitGatewayPeering]. {@macro pulumi_networkmanager_transit_gateway_peering_transit_gateway_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitGatewayPeering(
    String name, {
    TransitGatewayPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayPeering:TransitGatewayPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
    this.transitGatewayPeeringAttachmentId = registerOutput<String>('transitGatewayPeeringAttachmentId');
  }

  /// Gets an existing [TransitGatewayPeering] resource's state with the given [name] and [id].
  static TransitGatewayPeering get(
    String name,
    pulumi.Input<String> id, {
    TransitGatewayPeeringState? state,
  }) {
    return TransitGatewayPeering._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitGatewayPeering._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayPeering:TransitGatewayPeering',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
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
    this.transitGatewayPeeringAttachmentId = registerOutput<String>('transitGatewayPeeringAttachmentId');
  }
}
