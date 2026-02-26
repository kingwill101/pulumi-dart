import 'package:pulumi/pulumi.dart';
import 'connect_peer_args.dart';

/// Manages an EC2 Transit Gateway Connect Peer.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.Connect("example", {
/// transportAttachmentId: exampleAwsEc2TransitGatewayVpcAttachment.id,
/// transitGatewayId: exampleAwsEc2TransitGateway.id,
/// });
/// const exampleConnectPeer = new aws.ec2transitgateway.ConnectPeer("example", {
/// peerAddress: "10.1.2.3",
/// insideCidrBlocks: ["169.254.100.0/29"],
/// transitGatewayAttachmentId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.Connect("example",
/// transport_attachment_id=example_aws_ec2_transit_gateway_vpc_attachment["id"],
/// transit_gateway_id=example_aws_ec2_transit_gateway["id"])
/// example_connect_peer = aws.ec2transitgateway.ConnectPeer("example",
/// peer_address="10.1.2.3",
/// inside_cidr_blocks=["169.254.100.0/29"],
/// transit_gateway_attachment_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.Connect("example", new()
/// {
/// TransportAttachmentId = exampleAwsEc2TransitGatewayVpcAttachment.Id,
/// TransitGatewayId = exampleAwsEc2TransitGateway.Id,
/// });
///
/// var exampleConnectPeer = new Aws.Ec2TransitGateway.ConnectPeer("example", new()
/// {
/// PeerAddress = "10.1.2.3",
/// InsideCidrBlocks = new[]
/// {
/// "169.254.100.0/29",
/// },
/// TransitGatewayAttachmentId = example.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2transitgateway.NewConnect(ctx, "example", &ec2transitgateway.ConnectArgs{
/// TransportAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayVpcAttachment.Id),
/// TransitGatewayId:      pulumi.Any(exampleAwsEc2TransitGateway.Id),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2transitgateway.NewConnectPeer(ctx, "example", &ec2transitgateway.ConnectPeerArgs{
/// PeerAddress: pulumi.String("10.1.2.3"),
/// InsideCidrBlocks: pulumi.StringArray{
/// pulumi.String("169.254.100.0/29"),
/// },
/// TransitGatewayAttachmentId: example.ID(),
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
/// import com.pulumi.aws.ec2transitgateway.Connect;
/// import com.pulumi.aws.ec2transitgateway.ConnectArgs;
/// import com.pulumi.aws.ec2transitgateway.ConnectPeer;
/// import com.pulumi.aws.ec2transitgateway.ConnectPeerArgs;
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
/// var example = new Connect("example", ConnectArgs.builder()
/// .transportAttachmentId(exampleAwsEc2TransitGatewayVpcAttachment.id())
/// .transitGatewayId(exampleAwsEc2TransitGateway.id())
/// .build());
///
/// var exampleConnectPeer = new ConnectPeer("exampleConnectPeer", ConnectPeerArgs.builder()
/// .peerAddress("10.1.2.3")
/// .insideCidrBlocks("169.254.100.0/29")
/// .transitGatewayAttachmentId(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:Connect
/// properties:
/// transportAttachmentId: ${exampleAwsEc2TransitGatewayVpcAttachment.id}
/// transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// exampleConnectPeer:
/// type: aws:ec2transitgateway:ConnectPeer
/// name: example
/// properties:
/// peerAddress: 10.1.2.3
/// insideCidrBlocks:
/// - 169.254.100.0/29
/// transitGatewayAttachmentId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.ConnectPeer`" pulumi-lang-dotnet="`aws.ec2transitgateway.ConnectPeer`" pulumi-lang-go="`ec2transitgateway.ConnectPeer`" pulumi-lang-python="`ec2transitgateway.ConnectPeer`" pulumi-lang-yaml="`aws.ec2transitgateway.ConnectPeer`" pulumi-lang-java="`aws.ec2transitgateway.ConnectPeer`">`aws.ec2transitgateway.ConnectPeer`</span> using the EC2 Transit Gateway Connect Peer identifier. For example:
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

  /// The IP addressed assigned to customer device, which will be used as tunnel endpoint. It can be IPv4 or IPv6 address, but must be the same address family as <span pulumi-lang-nodejs="`transitGatewayAddress`" pulumi-lang-dotnet="`TransitGatewayAddress`" pulumi-lang-go="`transitGatewayAddress`" pulumi-lang-python="`transit_gateway_address`" pulumi-lang-yaml="`transitGatewayAddress`" pulumi-lang-java="`transitGatewayAddress`">`transit_gateway_address`</span>
  late final Output<String> peerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the EC2 Transit Gateway Connect Peer. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The IP address assigned to Transit Gateway, which will be used as tunnel endpoint. This address must be from associated Transit Gateway CIDR block. The address must be from the same address family as <span pulumi-lang-nodejs="`peerAddress`" pulumi-lang-dotnet="`PeerAddress`" pulumi-lang-go="`peerAddress`" pulumi-lang-python="`peer_address`" pulumi-lang-yaml="`peerAddress`" pulumi-lang-java="`peerAddress`">`peer_address`</span>. If not set explicitly, it will be selected from associated Transit Gateway CIDR blocks
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
    this.arn = Output.createUnknown<String>();
    this.bgpAsn = Output.createUnknown<String>();
    this.bgpPeerAddress = Output.createUnknown<String>();
    this.bgpTransitGatewayAddresses = Output.createUnknown<List<String>>();
    this.insideCidrBlocks = Output.createUnknown<List<String>>();
    this.peerAddress = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.transitGatewayAddress = Output.createUnknown<String>();
    this.transitGatewayAttachmentId = Output.createUnknown<String>();
  }
}
