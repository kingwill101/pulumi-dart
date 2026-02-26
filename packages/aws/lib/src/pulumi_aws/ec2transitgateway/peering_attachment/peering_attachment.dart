import 'package:pulumi/pulumi.dart';
import '../peering_attachment_options/peering_attachment_options.dart';
import 'peering_attachment_args.dart';

/// Manages an EC2 Transit Gateway Peering Attachment.
/// For examples of custom route table association and propagation, see the [EC2 Transit Gateway Networking Examples Guide](https://docs.aws.amazon.com/vpc/latest/tgw/TGW_Scenarios.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const peer = aws.getRegion({});
/// const local = new aws.ec2transitgateway.TransitGateway("local", {tags: {
/// Name: "Local TGW",
/// }});
/// const peerTransitGateway = new aws.ec2transitgateway.TransitGateway("peer", {tags: {
/// Name: "Peer TGW",
/// }});
/// const example = new aws.ec2transitgateway.PeeringAttachment("example", {
/// peerAccountId: peerTransitGateway.ownerId,
/// peerRegion: peer.then(peer => peer.name),
/// peerTransitGatewayId: peerTransitGateway.id,
/// transitGatewayId: local.id,
/// tags: {
/// Name: "TGW Peering Requestor",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// peer = aws.get_region()
/// local = aws.ec2transitgateway.TransitGateway("local", tags={
/// "Name": "Local TGW",
/// })
/// peer_transit_gateway = aws.ec2transitgateway.TransitGateway("peer", tags={
/// "Name": "Peer TGW",
/// })
/// example = aws.ec2transitgateway.PeeringAttachment("example",
/// peer_account_id=peer_transit_gateway.owner_id,
/// peer_region=peer.name,
/// peer_transit_gateway_id=peer_transit_gateway.id,
/// transit_gateway_id=local.id,
/// tags={
/// "Name": "TGW Peering Requestor",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var peer = Aws.GetRegion.Invoke();
///
/// var local = new Aws.Ec2TransitGateway.TransitGateway("local", new()
/// {
/// Tags =
/// {
/// { "Name", "Local TGW" },
/// },
/// });
///
/// var peerTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("peer", new()
/// {
/// Tags =
/// {
/// { "Name", "Peer TGW" },
/// },
/// });
///
/// var example = new Aws.Ec2TransitGateway.PeeringAttachment("example", new()
/// {
/// PeerAccountId = peerTransitGateway.OwnerId,
/// PeerRegion = peer.Apply(getRegionResult => getRegionResult.Name),
/// PeerTransitGatewayId = peerTransitGateway.Id,
/// TransitGatewayId = local.Id,
/// Tags =
/// {
/// { "Name", "TGW Peering Requestor" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// peer, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// local, err := ec2transitgateway.NewTransitGateway(ctx, "local", &ec2transitgateway.TransitGatewayArgs{
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Local TGW"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// peerTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "peer", &ec2transitgateway.TransitGatewayArgs{
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Peer TGW"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2transitgateway.NewPeeringAttachment(ctx, "example", &ec2transitgateway.PeeringAttachmentArgs{
/// PeerAccountId:        peerTransitGateway.OwnerId,
/// PeerRegion:           pulumi.String(peer.Name),
/// PeerTransitGatewayId: peerTransitGateway.ID(),
/// TransitGatewayId:     local.ID(),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("TGW Peering Requestor"),
/// },
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import com.pulumi.aws.ec2transitgateway.PeeringAttachment;
/// import com.pulumi.aws.ec2transitgateway.PeeringAttachmentArgs;
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
/// final var peer = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var local = new TransitGateway("local", TransitGatewayArgs.builder()
/// .tags(Map.of("Name", "Local TGW"))
/// .build());
///
/// var peerTransitGateway = new TransitGateway("peerTransitGateway", TransitGatewayArgs.builder()
/// .tags(Map.of("Name", "Peer TGW"))
/// .build());
///
/// var example = new PeeringAttachment("example", PeeringAttachmentArgs.builder()
/// .peerAccountId(peerTransitGateway.ownerId())
/// .peerRegion(peer.name())
/// .peerTransitGatewayId(peerTransitGateway.id())
/// .transitGatewayId(local.id())
/// .tags(Map.of("Name", "TGW Peering Requestor"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// local:
/// type: aws:ec2transitgateway:TransitGateway
/// properties:
/// tags:
/// Name: Local TGW
/// peerTransitGateway:
/// type: aws:ec2transitgateway:TransitGateway
/// name: peer
/// properties:
/// tags:
/// Name: Peer TGW
/// example:
/// type: aws:ec2transitgateway:PeeringAttachment
/// properties:
/// peerAccountId: ${peerTransitGateway.ownerId}
/// peerRegion: ${peer.name}
/// peerTransitGatewayId: ${peerTransitGateway.id}
/// transitGatewayId: ${local.id}
/// tags:
/// Name: TGW Peering Requestor
/// variables:
/// peer:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.PeeringAttachment`" pulumi-lang-dotnet="`aws.ec2transitgateway.PeeringAttachment`" pulumi-lang-go="`ec2transitgateway.PeeringAttachment`" pulumi-lang-python="`ec2transitgateway.PeeringAttachment`" pulumi-lang-yaml="`aws.ec2transitgateway.PeeringAttachment`" pulumi-lang-java="`aws.ec2transitgateway.PeeringAttachment`">`aws.ec2transitgateway.PeeringAttachment`</span> using the EC2 Transit Gateway Attachment identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/peeringAttachment:PeeringAttachment example tgw-attach-12345678
/// ```
class PeeringAttachment extends CustomResource {
  /// ARN of the attachment.
  late final Output<String> arn;

  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering request. See options below for more details!
  late final Output<PeeringAttachmentOptions?> options;

  /// Account ID of EC2 Transit Gateway to peer with. Defaults to the account ID the AWS provider is currently connected to.
  late final Output<String> peerAccountId;

  /// Region of EC2 Transit Gateway to peer with.
  late final Output<String> peerRegion;

  /// Identifier of EC2 Transit Gateway to peer with.
  late final Output<String> peerTransitGatewayId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> state;

  /// Key-value tags for the EC2 Transit Gateway Peering Attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier of EC2 Transit Gateway.
  late final Output<String> transitGatewayId;

  PeeringAttachment(
    String name, {
    PeeringAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/peeringAttachment:PeeringAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.options = registerOutput<PeeringAttachmentOptions?>('options');
    this.peerAccountId = registerOutput<String>('peerAccountId');
    this.peerRegion = registerOutput<String>('peerRegion');
    this.peerTransitGatewayId = registerOutput<String>('peerTransitGatewayId');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.transitGatewayId = registerOutput<String>('transitGatewayId');
  }
}
