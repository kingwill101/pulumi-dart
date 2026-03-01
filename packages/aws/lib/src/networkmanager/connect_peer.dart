import 'package:pulumi/pulumi.dart' as pulumi;
import 'connect_peer_args.dart';
import 'connect_peer_bgp_options.dart';
import 'connect_peer_configuration.dart';

/// Manages an AWS Network Manager Connect Peer.
///
/// Use this resource to create a Connect peer in AWS Network Manager. Connect peers establish BGP sessions with your on-premises networks through Connect attachments, enabling dynamic routing between your core network and external networks.
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
/// const example = new aws.networkmanager.VpcAttachment("example", {
///     subnetArns: exampleAwsSubnet.map(__item => __item.arn),
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     vpcArn: exampleAwsVpc.arn,
/// });
/// const exampleConnectAttachment = new aws.networkmanager.ConnectAttachment("example", {
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     transportAttachmentId: example.id,
///     edgeLocation: example.edgeLocation,
///     options: {
///         protocol: "GRE",
///     },
/// });
/// const exampleConnectPeer = new aws.networkmanager.ConnectPeer("example", {
///     connectAttachmentId: exampleConnectAttachment.id,
///     peerAddress: "127.0.0.1",
///     bgpOptions: {
///         peerAsn: "65000",
///     },
///     insideCidrBlocks: ["172.16.0.0/16"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
///     subnet_arns=[__item["arn"] for __item in example_aws_subnet],
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     vpc_arn=example_aws_vpc["arn"])
/// example_connect_attachment = aws.networkmanager.ConnectAttachment("example",
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     transport_attachment_id=example.id,
///     edge_location=example.edge_location,
///     options={
///         "protocol": "GRE",
///     })
/// example_connect_peer = aws.networkmanager.ConnectPeer("example",
///     connect_attachment_id=example_connect_attachment.id,
///     peer_address="127.0.0.1",
///     bgp_options={
///         "peer_asn": "65000",
///     },
///     inside_cidr_blocks=["172.16.0.0/16"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.VpcAttachment("example", new()
///     {
///         SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         VpcArn = exampleAwsVpc.Arn,
///     });
///
///     var exampleConnectAttachment = new Aws.NetworkManager.ConnectAttachment("example", new()
///     {
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         TransportAttachmentId = example.Id,
///         EdgeLocation = example.EdgeLocation,
///         Options = new Aws.NetworkManager.Inputs.ConnectAttachmentOptionsArgs
///         {
///             Protocol = "GRE",
///         },
///     });
///
///     var exampleConnectPeer = new Aws.NetworkManager.ConnectPeer("example", new()
///     {
///         ConnectAttachmentId = exampleConnectAttachment.Id,
///         PeerAddress = "127.0.0.1",
///         BgpOptions = new Aws.NetworkManager.Inputs.ConnectPeerBgpOptionsArgs
///         {
///             PeerAsn = "65000",
///         },
///         InsideCidrBlocks = new[]
///         {
///             "172.16.0.0/16",
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// example, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// SubnetArns: toPulumiArray(splat0),
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// exampleConnectAttachment, err := networkmanager.NewConnectAttachment(ctx, "example", &networkmanager.ConnectAttachmentArgs{
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// TransportAttachmentId: example.ID(),
/// EdgeLocation: example.EdgeLocation,
/// Options: &networkmanager.ConnectAttachmentOptionsArgs{
/// Protocol: pulumi.String("GRE"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewConnectPeer(ctx, "example", &networkmanager.ConnectPeerArgs{
/// ConnectAttachmentId: exampleConnectAttachment.ID(),
/// PeerAddress: pulumi.String("127.0.0.1"),
/// BgpOptions: &networkmanager.ConnectPeerBgpOptionsArgs{
/// PeerAsn: pulumi.String("65000"),
/// },
/// InsideCidrBlocks: pulumi.StringArray{
/// pulumi.String("172.16.0.0/16"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.ConnectAttachment;
/// import com.pulumi.aws.networkmanager.ConnectAttachmentArgs;
/// import com.pulumi.aws.networkmanager.inputs.ConnectAttachmentOptionsArgs;
/// import com.pulumi.aws.networkmanager.ConnectPeer;
/// import com.pulumi.aws.networkmanager.ConnectPeerArgs;
/// import com.pulumi.aws.networkmanager.inputs.ConnectPeerBgpOptionsArgs;
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .vpcArn(exampleAwsVpc.arn())
///             .build());
///
///         var exampleConnectAttachment = new ConnectAttachment("exampleConnectAttachment", ConnectAttachmentArgs.builder()
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .transportAttachmentId(example.id())
///             .edgeLocation(example.edgeLocation())
///             .options(ConnectAttachmentOptionsArgs.builder()
///                 .protocol("GRE")
///                 .build())
///             .build());
///
///         var exampleConnectPeer = new ConnectPeer("exampleConnectPeer", ConnectPeerArgs.builder()
///             .connectAttachmentId(exampleConnectAttachment.id())
///             .peerAddress("127.0.0.1")
///             .bgpOptions(ConnectPeerBgpOptionsArgs.builder()
///                 .peerAsn("65000")
///                 .build())
///             .insideCidrBlocks("172.16.0.0/16")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Usage with attachment accepter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.VpcAttachment("example", {
///     subnetArns: exampleAwsSubnet.map(__item => __item.arn),
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     vpcArn: exampleAwsVpc.arn,
/// });
/// const exampleAttachmentAccepter = new aws.networkmanager.AttachmentAccepter("example", {
///     attachmentId: example.id,
///     attachmentType: example.attachmentType,
/// });
/// const exampleConnectAttachment = new aws.networkmanager.ConnectAttachment("example", {
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     transportAttachmentId: example.id,
///     edgeLocation: example.edgeLocation,
///     options: {
///         protocol: "GRE",
///     },
/// }, {
///     dependsOn: [exampleAttachmentAccepter],
/// });
/// const example2 = new aws.networkmanager.AttachmentAccepter("example2", {
///     attachmentId: exampleConnectAttachment.id,
///     attachmentType: exampleConnectAttachment.attachmentType,
/// });
/// const exampleConnectPeer = new aws.networkmanager.ConnectPeer("example", {
///     connectAttachmentId: exampleConnectAttachment.id,
///     peerAddress: "127.0.0.1",
///     bgpOptions: {
///         peerAsn: "65500",
///     },
///     insideCidrBlocks: ["172.16.0.0/16"],
/// }, {
///     dependsOn: [example2],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
///     subnet_arns=[__item["arn"] for __item in example_aws_subnet],
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     vpc_arn=example_aws_vpc["arn"])
/// example_attachment_accepter = aws.networkmanager.AttachmentAccepter("example",
///     attachment_id=example.id,
///     attachment_type=example.attachment_type)
/// example_connect_attachment = aws.networkmanager.ConnectAttachment("example",
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     transport_attachment_id=example.id,
///     edge_location=example.edge_location,
///     options={
///         "protocol": "GRE",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_attachment_accepter]))
/// example2 = aws.networkmanager.AttachmentAccepter("example2",
///     attachment_id=example_connect_attachment.id,
///     attachment_type=example_connect_attachment.attachment_type)
/// example_connect_peer = aws.networkmanager.ConnectPeer("example",
///     connect_attachment_id=example_connect_attachment.id,
///     peer_address="127.0.0.1",
///     bgp_options={
///         "peer_asn": "65500",
///     },
///     inside_cidr_blocks=["172.16.0.0/16"],
///     opts = pulumi.ResourceOptions(depends_on=[example2]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.VpcAttachment("example", new()
///     {
///         SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         VpcArn = exampleAwsVpc.Arn,
///     });
///
///     var exampleAttachmentAccepter = new Aws.NetworkManager.AttachmentAccepter("example", new()
///     {
///         AttachmentId = example.Id,
///         AttachmentType = example.AttachmentType,
///     });
///
///     var exampleConnectAttachment = new Aws.NetworkManager.ConnectAttachment("example", new()
///     {
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         TransportAttachmentId = example.Id,
///         EdgeLocation = example.EdgeLocation,
///         Options = new Aws.NetworkManager.Inputs.ConnectAttachmentOptionsArgs
///         {
///             Protocol = "GRE",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAttachmentAccepter,
///         },
///     });
///
///     var example2 = new Aws.NetworkManager.AttachmentAccepter("example2", new()
///     {
///         AttachmentId = exampleConnectAttachment.Id,
///         AttachmentType = exampleConnectAttachment.AttachmentType,
///     });
///
///     var exampleConnectPeer = new Aws.NetworkManager.ConnectPeer("example", new()
///     {
///         ConnectAttachmentId = exampleConnectAttachment.Id,
///         PeerAddress = "127.0.0.1",
///         BgpOptions = new Aws.NetworkManager.Inputs.ConnectPeerBgpOptionsArgs
///         {
///             PeerAsn = "65500",
///         },
///         InsideCidrBlocks = new[]
///         {
///             "172.16.0.0/16",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example2,
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// example, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// SubnetArns: toPulumiArray(splat0),
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// exampleAttachmentAccepter, err := networkmanager.NewAttachmentAccepter(ctx, "example", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId: example.ID(),
/// AttachmentType: example.AttachmentType,
/// })
/// if err != nil {
/// return err
/// }
/// exampleConnectAttachment, err := networkmanager.NewConnectAttachment(ctx, "example", &networkmanager.ConnectAttachmentArgs{
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// TransportAttachmentId: example.ID(),
/// EdgeLocation: example.EdgeLocation,
/// Options: &networkmanager.ConnectAttachmentOptionsArgs{
/// Protocol: pulumi.String("GRE"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleAttachmentAccepter,
/// }))
/// if err != nil {
/// return err
/// }
/// example2, err := networkmanager.NewAttachmentAccepter(ctx, "example2", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId: exampleConnectAttachment.ID(),
/// AttachmentType: exampleConnectAttachment.AttachmentType,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewConnectPeer(ctx, "example", &networkmanager.ConnectPeerArgs{
/// ConnectAttachmentId: exampleConnectAttachment.ID(),
/// PeerAddress: pulumi.String("127.0.0.1"),
/// BgpOptions: &networkmanager.ConnectPeerBgpOptionsArgs{
/// PeerAsn: pulumi.String("65500"),
/// },
/// InsideCidrBlocks: pulumi.StringArray{
/// pulumi.String("172.16.0.0/16"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// example2,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
/// import com.pulumi.aws.networkmanager.ConnectAttachment;
/// import com.pulumi.aws.networkmanager.ConnectAttachmentArgs;
/// import com.pulumi.aws.networkmanager.inputs.ConnectAttachmentOptionsArgs;
/// import com.pulumi.aws.networkmanager.ConnectPeer;
/// import com.pulumi.aws.networkmanager.ConnectPeerArgs;
/// import com.pulumi.aws.networkmanager.inputs.ConnectPeerBgpOptionsArgs;
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .vpcArn(exampleAwsVpc.arn())
///             .build());
///
///         var exampleAttachmentAccepter = new AttachmentAccepter("exampleAttachmentAccepter", AttachmentAccepterArgs.builder()
///             .attachmentId(example.id())
///             .attachmentType(example.attachmentType())
///             .build());
///
///         var exampleConnectAttachment = new ConnectAttachment("exampleConnectAttachment", ConnectAttachmentArgs.builder()
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .transportAttachmentId(example.id())
///             .edgeLocation(example.edgeLocation())
///             .options(ConnectAttachmentOptionsArgs.builder()
///                 .protocol("GRE")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAttachmentAccepter)
///                 .build());
///
///         var example2 = new AttachmentAccepter("example2", AttachmentAccepterArgs.builder()
///             .attachmentId(exampleConnectAttachment.id())
///             .attachmentType(exampleConnectAttachment.attachmentType())
///             .build());
///
///         var exampleConnectPeer = new ConnectPeer("exampleConnectPeer", ConnectPeerArgs.builder()
///             .connectAttachmentId(exampleConnectAttachment.id())
///             .peerAddress("127.0.0.1")
///             .bgpOptions(ConnectPeerBgpOptionsArgs.builder()
///                 .peerAsn("65500")
///                 .build())
///             .insideCidrBlocks("172.16.0.0/16")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example2)
///                 .build());
///
///     }
/// }
/// ```
///
///
/// ### Usage with a Tunnel-less Connect attachment
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.VpcAttachment("example", {
///     subnetArns: exampleAwsSubnet.map(__item => __item.arn),
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     vpcArn: exampleAwsVpc.arn,
/// });
/// const exampleConnectAttachment = new aws.networkmanager.ConnectAttachment("example", {
///     coreNetworkId: exampleAwsccNetworkmanagerCoreNetwork.id,
///     transportAttachmentId: example.id,
///     edgeLocation: example.edgeLocation,
///     options: {
///         protocol: "NO_ENCAP",
///     },
/// });
/// const exampleConnectPeer = new aws.networkmanager.ConnectPeer("example", {
///     connectAttachmentId: exampleConnectAttachment.id,
///     peerAddress: "127.0.0.1",
///     bgpOptions: {
///         peerAsn: "65000",
///     },
///     subnetArn: example2.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.VpcAttachment("example",
///     subnet_arns=[__item["arn"] for __item in example_aws_subnet],
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     vpc_arn=example_aws_vpc["arn"])
/// example_connect_attachment = aws.networkmanager.ConnectAttachment("example",
///     core_network_id=example_awscc_networkmanager_core_network["id"],
///     transport_attachment_id=example.id,
///     edge_location=example.edge_location,
///     options={
///         "protocol": "NO_ENCAP",
///     })
/// example_connect_peer = aws.networkmanager.ConnectPeer("example",
///     connect_attachment_id=example_connect_attachment.id,
///     peer_address="127.0.0.1",
///     bgp_options={
///         "peer_asn": "65000",
///     },
///     subnet_arn=example2["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkManager.VpcAttachment("example", new()
///     {
///         SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         VpcArn = exampleAwsVpc.Arn,
///     });
///
///     var exampleConnectAttachment = new Aws.NetworkManager.ConnectAttachment("example", new()
///     {
///         CoreNetworkId = exampleAwsccNetworkmanagerCoreNetwork.Id,
///         TransportAttachmentId = example.Id,
///         EdgeLocation = example.EdgeLocation,
///         Options = new Aws.NetworkManager.Inputs.ConnectAttachmentOptionsArgs
///         {
///             Protocol = "NO_ENCAP",
///         },
///     });
///
///     var exampleConnectPeer = new Aws.NetworkManager.ConnectPeer("example", new()
///     {
///         ConnectAttachmentId = exampleConnectAttachment.Id,
///         PeerAddress = "127.0.0.1",
///         BgpOptions = new Aws.NetworkManager.Inputs.ConnectPeerBgpOptionsArgs
///         {
///             PeerAsn = "65000",
///         },
///         SubnetArn = example2.Arn,
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// example, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// SubnetArns: toPulumiArray(splat0),
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// exampleConnectAttachment, err := networkmanager.NewConnectAttachment(ctx, "example", &networkmanager.ConnectAttachmentArgs{
/// CoreNetworkId: pulumi.Any(exampleAwsccNetworkmanagerCoreNetwork.Id),
/// TransportAttachmentId: example.ID(),
/// EdgeLocation: example.EdgeLocation,
/// Options: &networkmanager.ConnectAttachmentOptionsArgs{
/// Protocol: pulumi.String("NO_ENCAP"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkmanager.NewConnectPeer(ctx, "example", &networkmanager.ConnectPeerArgs{
/// ConnectAttachmentId: exampleConnectAttachment.ID(),
/// PeerAddress: pulumi.String("127.0.0.1"),
/// BgpOptions: &networkmanager.ConnectPeerBgpOptionsArgs{
/// PeerAsn: pulumi.String("65000"),
/// },
/// SubnetArn: pulumi.Any(example2.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.ConnectAttachment;
/// import com.pulumi.aws.networkmanager.ConnectAttachmentArgs;
/// import com.pulumi.aws.networkmanager.inputs.ConnectAttachmentOptionsArgs;
/// import com.pulumi.aws.networkmanager.ConnectPeer;
/// import com.pulumi.aws.networkmanager.ConnectPeerArgs;
/// import com.pulumi.aws.networkmanager.inputs.ConnectPeerBgpOptionsArgs;
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
///         var example = new VpcAttachment("example", VpcAttachmentArgs.builder()
///             .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .vpcArn(exampleAwsVpc.arn())
///             .build());
///
///         var exampleConnectAttachment = new ConnectAttachment("exampleConnectAttachment", ConnectAttachmentArgs.builder()
///             .coreNetworkId(exampleAwsccNetworkmanagerCoreNetwork.id())
///             .transportAttachmentId(example.id())
///             .edgeLocation(example.edgeLocation())
///             .options(ConnectAttachmentOptionsArgs.builder()
///                 .protocol("NO_ENCAP")
///                 .build())
///             .build());
///
///         var exampleConnectPeer = new ConnectPeer("exampleConnectPeer", ConnectPeerArgs.builder()
///             .connectAttachmentId(exampleConnectAttachment.id())
///             .peerAddress("127.0.0.1")
///             .bgpOptions(ConnectPeerBgpOptionsArgs.builder()
///                 .peerAsn("65000")
///                 .build())
///             .subnetArn(example2.arn())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.networkmanager.ConnectPeer` using the connect peer ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/connectPeer:ConnectPeer example connect-peer-061f3e96275db1acc
/// ```
class ConnectPeer extends pulumi.CustomResource {
  /// ARN of the Connect peer.
  late final pulumi.Output<String> arn;

  /// Connect peer BGP options. See bgp_options for more information.
  late final pulumi.Output<ConnectPeerBgpOptions> bgpOptions;

  /// Configuration of the Connect peer.
  late final pulumi.Output<List<ConnectPeerConfiguration>> configurations;

  /// ID of the connection attachment.
  late final pulumi.Output<String> connectAttachmentId;

  /// ID of the Connect peer.
  late final pulumi.Output<String> connectPeerId;

  /// Connect peer core network address.
  late final pulumi.Output<String?> coreNetworkAddress;

  /// ID of a core network.
  late final pulumi.Output<String> coreNetworkId;

  /// Timestamp when the Connect peer was created.
  late final pulumi.Output<String> createdAt;

  /// Region where the peer is located.
  late final pulumi.Output<String> edgeLocation;

  /// Inside IP addresses used for BGP peering. Required when the Connect attachment protocol is `GRE`. See `aws.networkmanager.ConnectAttachment` for details.
  late final pulumi.Output<List<String>?> insideCidrBlocks;

  /// Connect peer address.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> peerAddress;

  /// State of the Connect peer.
  late final pulumi.Output<String> state;

  /// Subnet ARN for the Connect peer. Required when the Connect attachment protocol is `NO_ENCAP`. See `aws.networkmanager.ConnectAttachment` for details.
  late final pulumi.Output<String?> subnetArn;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ConnectPeer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectPeer]. {@macro pulumi_networkmanager_connect_peer_connect_peer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectPeer(
    String name, {
    ConnectPeerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:networkmanager/connectPeer:ConnectPeer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.bgpOptions = registerOutput<ConnectPeerBgpOptions>('bgpOptions');
    this.configurations = registerOutput<List<ConnectPeerConfiguration>>(
      'configurations',
    );
    this.connectAttachmentId = registerOutput<String>('connectAttachmentId');
    this.connectPeerId = registerOutput<String>('connectPeerId');
    this.coreNetworkAddress = registerOutput<String?>('coreNetworkAddress');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.createdAt = registerOutput<String>('createdAt');
    this.edgeLocation = registerOutput<String>('edgeLocation');
    this.insideCidrBlocks = registerOutput<List<String>?>('insideCidrBlocks');
    this.peerAddress = registerOutput<String>('peerAddress');
    this.state = registerOutput<String>('state');
    this.subnetArn = registerOutput<String?>('subnetArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
