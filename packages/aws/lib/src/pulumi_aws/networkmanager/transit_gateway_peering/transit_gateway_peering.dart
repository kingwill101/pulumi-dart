import 'package:pulumi/pulumi.dart';
import 'transit_gateway_peering_args.dart';

/// Manages a Network Manager transit gateway peering connection. Creates a peering connection between an AWS Cloud WAN core network and an AWS Transit Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.TransitGatewayPeering("example", {
/// coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
/// transitGatewayArn: exampleAwsEc2TransitGateway.arn,
/// }, {
/// dependsOn: [
/// exampleAwsEc2TransitGatewayPolicyTable,
/// exampleAwsNetworkmanagerCoreNetworkPolicyAttachment,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.TransitGatewayPeering("example",
/// core_network_id=example_awscc_networkmanager_core_network["id"],
/// transit_gateway_arn=example_aws_ec2_transit_gateway["arn"],
/// opts = pulumi.ResourceOptions(depends_on=[
/// example_aws_ec2_transit_gateway_policy_table,
/// example_aws_networkmanager_core_network_policy_attachment,
/// ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.TransitGatewayPeering("example", new()
/// {
/// CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
/// TransitGatewayArn = exampleAwsEc2TransitGateway.Arn,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleAwsEc2TransitGatewayPolicyTable,
/// exampleAwsNetworkmanagerCoreNetworkPolicyAttachment,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewTransitGatewayPeering(ctx, "example", &networkmanager.TransitGatewayPeeringArgs{
/// CoreNetworkId:     pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// TransitGatewayArn: pulumi.Any(exampleAwsEc2TransitGateway.Arn),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAwsEc2TransitGatewayPolicyTable,
/// exampleAwsNetworkmanagerCoreNetworkPolicyAttachment,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new TransitGatewayPeering("example", TransitGatewayPeeringArgs.builder()
/// .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
/// .transitGatewayArn(exampleAwsEc2TransitGateway.arn())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(
/// exampleAwsEc2TransitGatewayPolicyTable,
/// exampleAwsNetworkmanagerCoreNetworkPolicyAttachment)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:TransitGatewayPeering
/// properties:
/// coreNetworkId: ${exampleAwsccNetworkmanagerCoreNetwork.id}
/// transitGatewayArn: ${exampleAwsEc2TransitGateway.arn}
/// options:
/// dependsOn:
/// - ${exampleAwsEc2TransitGatewayPolicyTable}
/// - ${exampleAwsNetworkmanagerCoreNetworkPolicyAttachment}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.TransitGatewayPeering`" pulumi-lang-dotnet="`aws.networkmanager.TransitGatewayPeering`" pulumi-lang-go="`networkmanager.TransitGatewayPeering`" pulumi-lang-python="`networkmanager.TransitGatewayPeering`" pulumi-lang-yaml="`aws.networkmanager.TransitGatewayPeering`" pulumi-lang-java="`aws.networkmanager.TransitGatewayPeering`">`aws.networkmanager.TransitGatewayPeering`</span> using the peering ID. For example:
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

  /// Key-value tags for the peering. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
    this.arn = Output.createUnknown<String>();
    this.coreNetworkArn = Output.createUnknown<String>();
    this.coreNetworkId = Output.createUnknown<String>();
    this.edgeLocation = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.peeringType = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.transitGatewayArn = Output.createUnknown<String>();
    this.transitGatewayPeeringAttachmentId = Output.createUnknown<String>();
  }
}
