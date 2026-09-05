import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_connection_options_accepter.dart';
import 'peering_connection_options_args.dart';
import 'peering_connection_options_requester.dart';
import 'peering_connection_options_state.dart';

/// Provides a resource to manage VPC peering connection options.
///
/// &gt; **NOTE on VPC Peering Connections and VPC Peering Connection Options:** This provider provides
/// both a standalone VPC Peering Connection Options and a VPC Peering Connection
/// resource with `accepter` and `requester` attributes. Do not manage options for the same VPC peering
/// connection in both a VPC Peering Connection resource and a VPC Peering Connection Options resource.
/// Doing so will cause a conflict of options and will overwrite the options.
/// Using a VPC Peering Connection Options resource decouples management of the connection options from
/// management of the VPC Peering Connection and allows options to be set correctly in cross-region and
/// cross-account scenarios.
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
/// const foo = new aws.ec2.Vpc("foo", {cidrBlock: "10.0.0.0/16"});
/// const bar = new aws.ec2.Vpc("bar", {cidrBlock: "10.1.0.0/16"});
/// const fooVpcPeeringConnection = new aws.ec2.VpcPeeringConnection("foo", {
///     vpcId: foo.id,
///     peerVpcId: bar.id,
///     autoAccept: true,
/// });
/// const fooPeeringConnectionOptions = new aws.ec2.PeeringConnectionOptions("foo", {
///     accepter: {
///         allowRemoteVpcDnsResolution: true,
///     },
///     vpcPeeringConnectionId: fooVpcPeeringConnection.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.Vpc("foo", cidr_block="10.0.0.0/16")
/// bar = aws.ec2.Vpc("bar", cidr_block="10.1.0.0/16")
/// foo_vpc_peering_connection = aws.ec2.VpcPeeringConnection("foo",
///     vpc_id=foo.id,
///     peer_vpc_id=bar.id,
///     auto_accept=True)
/// foo_peering_connection_options = aws.ec2.PeeringConnectionOptions("foo",
///     accepter={
///         "allow_remote_vpc_dns_resolution": True,
///     },
///     vpc_peering_connection_id=foo_vpc_peering_connection.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Ec2.Vpc("foo", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var bar = new Aws.Ec2.Vpc("bar", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var fooVpcPeeringConnection = new Aws.Ec2.VpcPeeringConnection("foo", new()
///     {
///         VpcId = foo.Id,
///         PeerVpcId = bar.Id,
///         AutoAccept = true,
///     });
///
///     var fooPeeringConnectionOptions = new Aws.Ec2.PeeringConnectionOptions("foo", new()
///     {
///         Accepter = new Aws.Ec2.Inputs.PeeringConnectionOptionsAccepterArgs
///         {
///             AllowRemoteVpcDnsResolution = true,
///         },
///         VpcPeeringConnectionId = fooVpcPeeringConnection.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := ec2.NewVpc(ctx, "bar", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooVpcPeeringConnection, err := ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// 			VpcId:      foo.ID().ToIDOutput().ToStringOutput(),
/// 			PeerVpcId:  bar.ID().ToIDOutput().ToStringOutput(),
/// 			AutoAccept: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewPeeringConnectionOptions(ctx, "foo", &ec2.PeeringConnectionOptionsArgs{
/// 			Accepter: &ec2.PeeringConnectionOptionsAccepterArgs{
/// 				AllowRemoteVpcDnsResolution: pulumi.Bool(true),
/// 			},
/// 			VpcPeeringConnectionId: fooVpcPeeringConnection.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_ec2_vpc" "foo" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_vpc" "bar" {
///   cidr_block = "10.1.0.0/16"
/// }
/// resource "aws_ec2_vpcpeeringconnection" "foo" {
///   vpc_id      = aws_ec2_vpc.foo.id
///   peer_vpc_id = aws_ec2_vpc.bar.id
///   auto_accept = true
/// }
/// resource "aws_ec2_peeringconnectionoptions" "foo" {
///   accepter = {
///     allow_remote_vpc_dns_resolution = true
///   }
///   vpc_peering_connection_id = aws_ec2_vpcpeeringconnection.foo.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnection;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionArgs;
/// import com.pulumi.aws.ec2.PeeringConnectionOptions;
/// import com.pulumi.aws.ec2.PeeringConnectionOptionsArgs;
/// import com.pulumi.aws.ec2.inputs.PeeringConnectionOptionsAccepterArgs;
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
///         var foo = new Vpc("foo", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var bar = new Vpc("bar", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var fooVpcPeeringConnection = new VpcPeeringConnection("fooVpcPeeringConnection", VpcPeeringConnectionArgs.builder()
///             .vpcId(foo.id())
///             .peerVpcId(bar.id())
///             .autoAccept(true)
///             .build());
///
///         var fooPeeringConnectionOptions = new PeeringConnectionOptions("fooPeeringConnectionOptions", PeeringConnectionOptionsArgs.builder()
///             .accepter(PeeringConnectionOptionsAccepterArgs.builder()
///                 .allowRemoteVpcDnsResolution(true)
///                 .build())
///             .vpcPeeringConnectionId(fooVpcPeeringConnection.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   bar:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.1.0.0/16
///   fooVpcPeeringConnection:
///     type: aws:ec2:VpcPeeringConnection
///     name: foo
///     properties:
///       vpcId: ${foo.id}
///       peerVpcId: ${bar.id}
///       autoAccept: true
///   fooPeeringConnectionOptions:
///     type: aws:ec2:PeeringConnectionOptions
///     name: foo
///     properties:
///       accepter:
///         allowRemoteVpcDnsResolution: true
///       vpcPeeringConnectionId: ${fooVpcPeeringConnection.id}
/// ```
///
///
/// ### Cross-Account Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {
///     cidrBlock: "10.0.0.0/16",
///     enableDnsSupport: true,
///     enableDnsHostnames: true,
/// });
/// const peerVpc = new aws.ec2.Vpc("peer", {
///     cidrBlock: "10.1.0.0/16",
///     enableDnsSupport: true,
///     enableDnsHostnames: true,
/// });
/// const peer = aws.getCallerIdentity({});
/// // Requester's side of the connection.
/// const peerVpcPeeringConnection = new aws.ec2.VpcPeeringConnection("peer", {
///     vpcId: main.id,
///     peerVpcId: peerVpc.id,
///     peerOwnerId: peer.then(peer => peer.accountId),
///     autoAccept: false,
///     tags: {
///         Side: "Requester",
///     },
/// });
/// // Accepter's side of the connection.
/// const peerVpcPeeringConnectionAccepter = new aws.ec2.VpcPeeringConnectionAccepter("peer", {
///     vpcPeeringConnectionId: peerVpcPeeringConnection.id,
///     autoAccept: true,
///     tags: {
///         Side: "Accepter",
///     },
/// });
/// const requester = new aws.ec2.PeeringConnectionOptions("requester", {
///     requester: {
///         allowRemoteVpcDnsResolution: true,
///     },
///     vpcPeeringConnectionId: peerVpcPeeringConnectionAccepter.id,
/// });
/// const accepter = new aws.ec2.PeeringConnectionOptions("accepter", {
///     accepter: {
///         allowRemoteVpcDnsResolution: true,
///     },
///     vpcPeeringConnectionId: peerVpcPeeringConnectionAccepter.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main",
///     cidr_block="10.0.0.0/16",
///     enable_dns_support=True,
///     enable_dns_hostnames=True)
/// peer_vpc = aws.ec2.Vpc("peer",
///     cidr_block="10.1.0.0/16",
///     enable_dns_support=True,
///     enable_dns_hostnames=True)
/// peer = aws.get_caller_identity()
/// # Requester's side of the connection.
/// peer_vpc_peering_connection = aws.ec2.VpcPeeringConnection("peer",
///     vpc_id=main.id,
///     peer_vpc_id=peer_vpc.id,
///     peer_owner_id=peer.account_id,
///     auto_accept=False,
///     tags={
///         "Side": "Requester",
///     })
/// # Accepter's side of the connection.
/// peer_vpc_peering_connection_accepter = aws.ec2.VpcPeeringConnectionAccepter("peer",
///     vpc_peering_connection_id=peer_vpc_peering_connection.id,
///     auto_accept=True,
///     tags={
///         "Side": "Accepter",
///     })
/// requester = aws.ec2.PeeringConnectionOptions("requester",
///     requester={
///         "allow_remote_vpc_dns_resolution": True,
///     },
///     vpc_peering_connection_id=peer_vpc_peering_connection_accepter.id)
/// accepter = aws.ec2.PeeringConnectionOptions("accepter",
///     accepter={
///         "allow_remote_vpc_dns_resolution": True,
///     },
///     vpc_peering_connection_id=peer_vpc_peering_connection_accepter.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         EnableDnsSupport = true,
///         EnableDnsHostnames = true,
///     });
///
///     var peerVpc = new Aws.Ec2.Vpc("peer", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///         EnableDnsSupport = true,
///         EnableDnsHostnames = true,
///     });
///
///     var peer = Aws.GetCallerIdentity.Invoke();
///
///     // Requester's side of the connection.
///     var peerVpcPeeringConnection = new Aws.Ec2.VpcPeeringConnection("peer", new()
///     {
///         VpcId = main.Id,
///         PeerVpcId = peerVpc.Id,
///         PeerOwnerId = peer.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         AutoAccept = false,
///         Tags =
///         {
///             { "Side", "Requester" },
///         },
///     });
///
///     // Accepter's side of the connection.
///     var peerVpcPeeringConnectionAccepter = new Aws.Ec2.VpcPeeringConnectionAccepter("peer", new()
///     {
///         VpcPeeringConnectionId = peerVpcPeeringConnection.Id,
///         AutoAccept = true,
///         Tags =
///         {
///             { "Side", "Accepter" },
///         },
///     });
///
///     var requester = new Aws.Ec2.PeeringConnectionOptions("requester", new()
///     {
///         Requester = new Aws.Ec2.Inputs.PeeringConnectionOptionsRequesterArgs
///         {
///             AllowRemoteVpcDnsResolution = true,
///         },
///         VpcPeeringConnectionId = peerVpcPeeringConnectionAccepter.Id,
///     });
///
///     var accepter = new Aws.Ec2.PeeringConnectionOptions("accepter", new()
///     {
///         Accepter = new Aws.Ec2.Inputs.PeeringConnectionOptionsAccepterArgs
///         {
///             AllowRemoteVpcDnsResolution = true,
///         },
///         VpcPeeringConnectionId = peerVpcPeeringConnectionAccepter.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.0.0.0/16"),
/// 			EnableDnsSupport:   pulumi.Bool(true),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peerVpc, err := ec2.NewVpc(ctx, "peer", &ec2.VpcArgs{
/// 			CidrBlock:          pulumi.String("10.1.0.0/16"),
/// 			EnableDnsSupport:   pulumi.Bool(true),
/// 			EnableDnsHostnames: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peer, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Requester's side of the connection.
/// 		peerVpcPeeringConnection, err := ec2.NewVpcPeeringConnection(ctx, "peer", &ec2.VpcPeeringConnectionArgs{
/// 			VpcId:       main.ID().ToIDOutput().ToStringOutput(),
/// 			PeerVpcId:   peerVpc.ID().ToIDOutput().ToStringOutput(),
/// 			PeerOwnerId: pulumi.String(peer.AccountId),
/// 			AutoAccept:  pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"Side": pulumi.String("Requester"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Accepter's side of the connection.
/// 		peerVpcPeeringConnectionAccepter, err := ec2.NewVpcPeeringConnectionAccepter(ctx, "peer", &ec2.VpcPeeringConnectionAccepterArgs{
/// 			VpcPeeringConnectionId: peerVpcPeeringConnection.ID().ToIDOutput().ToStringOutput(),
/// 			AutoAccept:             pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Side": pulumi.String("Accepter"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewPeeringConnectionOptions(ctx, "requester", &ec2.PeeringConnectionOptionsArgs{
/// 			Requester: &ec2.PeeringConnectionOptionsRequesterArgs{
/// 				AllowRemoteVpcDnsResolution: pulumi.Bool(true),
/// 			},
/// 			VpcPeeringConnectionId: peerVpcPeeringConnectionAccepter.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewPeeringConnectionOptions(ctx, "accepter", &ec2.PeeringConnectionOptionsArgs{
/// 			Accepter: &ec2.PeeringConnectionOptionsAccepterArgs{
/// 				AllowRemoteVpcDnsResolution: pulumi.Bool(true),
/// 			},
/// 			VpcPeeringConnectionId: peerVpcPeeringConnectionAccepter.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_getcalleridentity" "peer" {
/// }
///
/// resource "aws_ec2_vpc" "main" {
///   cidr_block           = "10.0.0.0/16"
///   enable_dns_support   = true
///   enable_dns_hostnames = true
/// }
/// resource "aws_ec2_vpc" "peer" {
///   cidr_block           = "10.1.0.0/16"
///   enable_dns_support   = true
///   enable_dns_hostnames = true
/// }
/// # Requester's side of the connection.
/// resource "aws_ec2_vpcpeeringconnection" "peer" {
///   vpc_id        = aws_ec2_vpc.main.id
///   peer_vpc_id   = aws_ec2_vpc.peer.id
///   peer_owner_id = data.aws_getcalleridentity.peer.account_id
///   auto_accept   = false
///   tags = {
///     "Side" = "Requester"
///   }
/// }
/// # Accepter's side of the connection.
/// resource "aws_ec2_vpcpeeringconnectionaccepter" "peer" {
///   vpc_peering_connection_id = aws_ec2_vpcpeeringconnection.peer.id
///   auto_accept               = true
///   tags = {
///     "Side" = "Accepter"
///   }
/// }
/// resource "aws_ec2_peeringconnectionoptions" "requester" {
///   requester = {
///     allow_remote_vpc_dns_resolution = true
///   }
///   vpc_peering_connection_id = aws_ec2_vpcpeeringconnectionaccepter.peer.id
/// }
/// resource "aws_ec2_peeringconnectionoptions" "accepter" {
///   accepter = {
///     allow_remote_vpc_dns_resolution = true
///   }
///   vpc_peering_connection_id = aws_ec2_vpcpeeringconnectionaccepter.peer.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnection;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionAccepter;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionAccepterArgs;
/// import com.pulumi.aws.ec2.PeeringConnectionOptions;
/// import com.pulumi.aws.ec2.PeeringConnectionOptionsArgs;
/// import com.pulumi.aws.ec2.inputs.PeeringConnectionOptionsRequesterArgs;
/// import com.pulumi.aws.ec2.inputs.PeeringConnectionOptionsAccepterArgs;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .enableDnsSupport(true)
///             .enableDnsHostnames(true)
///             .build());
///
///         var peerVpc = new Vpc("peerVpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .enableDnsSupport(true)
///             .enableDnsHostnames(true)
///             .build());
///
///         final var peer = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         // Requester's side of the connection.
///         var peerVpcPeeringConnection = new VpcPeeringConnection("peerVpcPeeringConnection", VpcPeeringConnectionArgs.builder()
///             .vpcId(main.id())
///             .peerVpcId(peerVpc.id())
///             .peerOwnerId(peer.accountId())
///             .autoAccept(false)
///             .tags(Map.of("Side", "Requester"))
///             .build());
///
///         // Accepter's side of the connection.
///         var peerVpcPeeringConnectionAccepter = new VpcPeeringConnectionAccepter("peerVpcPeeringConnectionAccepter", VpcPeeringConnectionAccepterArgs.builder()
///             .vpcPeeringConnectionId(peerVpcPeeringConnection.id())
///             .autoAccept(true)
///             .tags(Map.of("Side", "Accepter"))
///             .build());
///
///         var requester = new PeeringConnectionOptions("requester", PeeringConnectionOptionsArgs.builder()
///             .requester(PeeringConnectionOptionsRequesterArgs.builder()
///                 .allowRemoteVpcDnsResolution(true)
///                 .build())
///             .vpcPeeringConnectionId(peerVpcPeeringConnectionAccepter.id())
///             .build());
///
///         var accepter = new PeeringConnectionOptions("accepter", PeeringConnectionOptionsArgs.builder()
///             .accepter(PeeringConnectionOptionsAccepterArgs.builder()
///                 .allowRemoteVpcDnsResolution(true)
///                 .build())
///             .vpcPeeringConnectionId(peerVpcPeeringConnectionAccepter.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///       enableDnsSupport: true
///       enableDnsHostnames: true
///   peerVpc:
///     type: aws:ec2:Vpc
///     name: peer
///     properties:
///       cidrBlock: 10.1.0.0/16
///       enableDnsSupport: true
///       enableDnsHostnames: true
///   # Requester's side of the connection.
///   peerVpcPeeringConnection:
///     type: aws:ec2:VpcPeeringConnection
///     name: peer
///     properties:
///       vpcId: ${main.id}
///       peerVpcId: ${peerVpc.id}
///       peerOwnerId: ${peer.accountId}
///       autoAccept: false
///       tags:
///         Side: Requester
///   # Accepter's side of the connection.
///   peerVpcPeeringConnectionAccepter:
///     type: aws:ec2:VpcPeeringConnectionAccepter
///     name: peer
///     properties:
///       vpcPeeringConnectionId: ${peerVpcPeeringConnection.id}
///       autoAccept: true
///       tags:
///         Side: Accepter
///   requester:
///     type: aws:ec2:PeeringConnectionOptions
///     properties:
///       requester:
///         allowRemoteVpcDnsResolution: true
///       vpcPeeringConnectionId: ${peerVpcPeeringConnectionAccepter.id}
///   accepter:
///     type: aws:ec2:PeeringConnectionOptions
///     properties:
///       accepter:
///         allowRemoteVpcDnsResolution: true
///       vpcPeeringConnectionId: ${peerVpcPeeringConnectionAccepter.id}
/// variables:
///   peer:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Peering Connection Options using the VPC peering `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/peeringConnectionOptions:PeeringConnectionOptions foo pcx-111aaa111
/// ```
class PeeringConnectionOptions extends pulumi.CustomResource {
  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts the peering connection (a maximum of one).
  late final pulumi.Output<PeeringConnectionOptionsAccepter> accepter;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests the peering connection (a maximum of one).
  late final pulumi.Output<PeeringConnectionOptionsRequester> requester;
  /// The ID of the requester VPC peering connection.
  late final pulumi.Output<String> vpcPeeringConnectionId;

  /// Creates a new [PeeringConnectionOptions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeeringConnectionOptions]. {@macro pulumi_ec2_peering_connection_options_peering_connection_options_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeeringConnectionOptions(
    String name, {
    PeeringConnectionOptionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/peeringConnectionOptions:PeeringConnectionOptions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accepter = registerOutput<PeeringConnectionOptionsAccepter>('accepter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PeeringConnectionOptionsAccepter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requester = registerOutput<PeeringConnectionOptionsRequester>('requester', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PeeringConnectionOptionsRequester.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcPeeringConnectionId = registerOutput<String>('vpcPeeringConnectionId');
  }

  /// Gets an existing [PeeringConnectionOptions] resource's state with the given [name] and [id].
  static PeeringConnectionOptions get(
    String name,
    pulumi.Input<String> id, {
    PeeringConnectionOptionsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PeeringConnectionOptions._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PeeringConnectionOptions._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/peeringConnectionOptions:PeeringConnectionOptions',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accepter = registerOutput<PeeringConnectionOptionsAccepter>('accepter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PeeringConnectionOptionsAccepter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requester = registerOutput<PeeringConnectionOptionsRequester>('requester', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PeeringConnectionOptionsRequester.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcPeeringConnectionId = registerOutput<String>('vpcPeeringConnectionId');
  }

  /// Creates a typed reference to an existing [PeeringConnectionOptions] resource.
  PeeringConnectionOptions.reference(String urn)
    : super(
        'aws:ec2/peeringConnectionOptions:PeeringConnectionOptions',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accepter = registerOutput<PeeringConnectionOptionsAccepter>('accepter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PeeringConnectionOptionsAccepter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    requester = registerOutput<PeeringConnectionOptionsRequester>('requester', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PeeringConnectionOptionsRequester.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vpcPeeringConnectionId = registerOutput<String>('vpcPeeringConnectionId');
  }
}
