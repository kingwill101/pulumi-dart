import 'package:pulumi/pulumi.dart';
import 'transit_gateway_route_table_attachment_args.dart';

/// Manages a Network Manager transit gateway route table attachment.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.TransitGatewayRouteTableAttachment("example", {
/// peeringId: exampleAwsNetworkmanagerTransitGatewayPeering.id,
/// transitGatewayRouteTableArn: exampleAwsEc2TransitGatewayRouteTable.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.TransitGatewayRouteTableAttachment("example",
/// peering_id=example_aws_networkmanager_transit_gateway_peering["id"],
/// transit_gateway_route_table_arn=example_aws_ec2_transit_gateway_route_table["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.TransitGatewayRouteTableAttachment("example", new()
/// {
/// PeeringId = exampleAwsNetworkmanagerTransitGatewayPeering.Id,
/// TransitGatewayRouteTableArn = exampleAwsEc2TransitGatewayRouteTable.Arn,
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
/// _, err := networkmanager.NewTransitGatewayRouteTableAttachment(ctx, "example", &networkmanager.TransitGatewayRouteTableAttachmentArgs{
/// PeeringId:                   pulumi.Any(exampleAwsNetworkmanagerTransitGatewayPeering.Id),
/// TransitGatewayRouteTableArn: pulumi.Any(exampleAwsEc2TransitGatewayRouteTable.Arn),
/// })
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
/// import com.pulumi.aws.networkmanager.TransitGatewayRouteTableAttachment;
/// import com.pulumi.aws.networkmanager.TransitGatewayRouteTableAttachmentArgs;
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
/// var example = new TransitGatewayRouteTableAttachment("example", TransitGatewayRouteTableAttachmentArgs.builder()
/// .peeringId(exampleAwsNetworkmanagerTransitGatewayPeering.id())
/// .transitGatewayRouteTableArn(exampleAwsEc2TransitGatewayRouteTable.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:TransitGatewayRouteTableAttachment
/// properties:
/// peeringId: ${exampleAwsNetworkmanagerTransitGatewayPeering.id}
/// transitGatewayRouteTableArn: ${exampleAwsEc2TransitGatewayRouteTable.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.TransitGatewayRouteTableAttachment`" pulumi-lang-dotnet="`aws.networkmanager.TransitGatewayRouteTableAttachment`" pulumi-lang-go="`networkmanager.TransitGatewayRouteTableAttachment`" pulumi-lang-python="`networkmanager.TransitGatewayRouteTableAttachment`" pulumi-lang-yaml="`aws.networkmanager.TransitGatewayRouteTableAttachment`" pulumi-lang-java="`aws.networkmanager.TransitGatewayRouteTableAttachment`">`aws.networkmanager.TransitGatewayRouteTableAttachment`</span> using the attachment ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/transitGatewayRouteTableAttachment:TransitGatewayRouteTableAttachment example attachment-0f8fa60d2238d1bd8
/// ```
class TransitGatewayRouteTableAttachment extends CustomResource {
  /// Attachment ARN.
  late final Output<String> arn;

  /// Policy rule number associated with the attachment.
  late final Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final Output<String> attachmentType;

  /// ARN of the core network.
  late final Output<String> coreNetworkArn;

  /// ID of the core network.
  late final Output<String> coreNetworkId;

  /// Edge location for the peer.
  late final Output<String> edgeLocation;

  /// ID of the attachment account owner.
  late final Output<String> ownerAccountId;

  /// ID of the peer for the attachment.
  late final Output<String> peeringId;

  /// Attachment resource ARN.
  late final Output<String> resourceArn;

  /// The routing policy label to apply to the Transit Gateway route table attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final Output<String> segmentName;

  /// State of the attachment.
  late final Output<String> state;

  /// Key-value tags for the attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the transit gateway route table for the attachment.
  ///
  /// The following arguments are optional:
  late final Output<String> transitGatewayRouteTableArn;

  TransitGatewayRouteTableAttachment(
    String name, {
    TransitGatewayRouteTableAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/transitGatewayRouteTableAttachment:TransitGatewayRouteTableAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.attachmentPolicyRuleNumber = Output.createUnknown<int>();
    this.attachmentType = Output.createUnknown<String>();
    this.coreNetworkArn = Output.createUnknown<String>();
    this.coreNetworkId = Output.createUnknown<String>();
    this.edgeLocation = Output.createUnknown<String>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.peeringId = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.routingPolicyLabel = Output.createUnknown<String?>();
    this.segmentName = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.transitGatewayRouteTableArn = Output.createUnknown<String>();
  }
}
